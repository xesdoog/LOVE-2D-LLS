local isNT = package.config:sub(1,1) == "\\"

if isNT then
    local ver = "5.4"
    local base = os.getenv("AppData") .. "\\luarocks"

    package.path = package.path .. ";" .. base .. "\\share\\lua\\" .. ver .. "\\?.lua;" .. base .. "\\share\\lua\\" .. ver .. "\\?\\init.lua"
    package.cpath = package.cpath .. ";" .. base .. "\\lib\\lua\\" .. ver .. "\\?.dll"
end

local lfs = require("lfs")
local workdir = lfs.currentdir()
local love_api_path = string.format("%s/love-api", workdir)

local function PromptCloneAPI()
    print("[?] LOVE-API directory not found. Would you like to clone it now? (y/n)")
    io.write("> ")
    local input = io.read("*l")

    if (input:lower() == "y") then
        print("[*] Cloning love-api from GitHub...")
        local success = os.execute("git clone https://github.com/love2d-community/love-api")

        if success then
            print("[+] Successfully cloned LOVE-API to " .. workdir)
            return true
        else
            print("[!] Failed to clone LOVE-API. Please clone it manually.")
            return false
        end
    else
        print("[!] Stub generation requires LOVE-API. Aborting...")
        return false
    end
end

function io.parentPath(path)
    return path:match("^(.*)[/\\][^/\\]+[/\\]?$")
end

---@param path string
function io.isDir(path)
    local attr = lfs.attributes(path)
    return attr and (attr.mode == "directory")
end

if not io.isDir(love_api_path) then
    if not PromptCloneAPI() then
        os.exit(1)
    end
end

---@param path string
---@param data any
local function WriteFile(path, data)
    local f = assert(io.open(path, "w"))
    f:write(data)
    f:close()
end

---@param dir string directory path
local function Tree(dir)
    assert(dir and dir ~= "", "Please pass directory parameter")

    if string.sub(dir, -1) == "/" then
        dir = string.sub(dir, 1, -2)
    end

    local function yieldtree(path)
        for entry in lfs.dir(path) do
            if entry ~= "." and entry ~= ".." then
                entry = path .."/" .. entry
                local attr = lfs.attributes(entry)
                coroutine.yield(entry, attr)

                if (attr.mode == "directory") then
                    yieldtree(entry)
                end
            end
        end
    end

    return coroutine.wrap(function()
        yieldtree(dir)
    end)
end

---@param path string
local function GetFileExtension(path)
    return path:match("^.+(%..+)$")
end

---@param doc string
local function SanitizeDoc(doc)
    return (doc or ""):gsub("\n", " "):gsub("%s+", " "):gsub("--", "")
end

---@param func table
local function StubFunc(func)
    local args = {}
    local doc_lines = {}
    table.insert(doc_lines, ("--- %s"):format(SanitizeDoc(func.description)))

    if func.variants and func.variants[1] then
        if func.variants[1].arguments then
            for _, arg in ipairs(func.variants[1].arguments) do
                local argName = arg.name or "arg"
                local argType = arg.type or "any"

                local isOptional = arg.default ~= nil
                or (arg.description and arg.description:lower():match("optional"))
                or (argName:match("?"))

                local paramLine = isOptional
                and string.format("---@param %s? %s", argName, argType)
                or string.format("---@param %s %s", argName, argType)

                table.insert(args, argName)
                table.insert(doc_lines, paramLine)
            end
        end

        if func.variants[1].returns then
            for _, ret in ipairs(func.variants[1].returns) do
                local retType = ret.arraytype and (ret.type .. "<" .. ret.arraytype .. ">") or ret.type or "any"
                local retName = ret.name or ""
                local retDesc = ret.description and (" # " .. SanitizeDoc(ret.description)) or ""
                local returnDoc = string.format("---@return %s %s%s", retType, retName, retDesc)
                table.insert(doc_lines, returnDoc)
            end
        end
    end

    local sig = string.format("function love.%s(%s) end", func.name, table.concat(args, ", "))
    return table.concat(doc_lines, "\n") .. "\n" .. sig .. "\n"
end

---@param module table
local function GenerateStubForModule(module)
    local stub = {}

    table.insert(stub, string.format("-- Module: love.%s", module.name))
    table.insert(stub, string.format("love.%s = {}", module.name))

    if module.functions then
        for _, func in ipairs(module.functions) do
            table.insert(stub, StubFunc(func))
        end
    end

    return table.concat(stub, "\n")
end


local modules_path = ("%s/love-api/modules/"):format(workdir)
local out_path = ("%s/stubs/"):format(io.parentPath(workdir))

lfs.mkdir(out_path)
package.path = package.path .. ";" .. modules_path .. "?.lua;" .. modules_path .. "?/init.lua;"

local function Main(path)
    print("[*] Generating stubs from love-api...")
    for filepath, _ in Tree(path) do
        if (GetFileExtension(filepath) == ".lua") then
            local filename = filepath:match("([^/\\]+)$")
            local mod_name = filename or ""
            local chunk    = assert(loadfile(filepath))
            local mod      = chunk(mod_name)
            local stub     = GenerateStubForModule(mod)
            local outfile  = out_path .. "love." .. mod.name .. ".lua"

            WriteFile(outfile, stub)
            print("[+] Generated stub for love." .. mod.name)
        end
    end
    print("[+] Stub generation complete.")
end

Main(modules_path)
