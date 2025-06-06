---@meta

-- Module: love.filesystem
love.filesystem = {}
--- Append data to an existing file.
---@param name string
---@param data string
---@param size? number
---@return boolean success # True if the operation was successful, or nil if there was an error.
---@return string errormsg # The error message on failure.
function love.filesystem.append(name, data, size) end

--- Gets whether love.filesystem follows symbolic links.
---@return boolean enable # Whether love.filesystem follows symbolic links.
function love.filesystem.areSymlinksEnabled() end

--- Recursively creates a directory. When called with 'a/b' it creates both 'a' and 'a/b', if they don't exist already.
---@param name string
---@return boolean success # True if the directory was created, false if not.
function love.filesystem.createDirectory(name) end

--- Returns the application data directory (could be the same as getUserDirectory)
---@return string path # The path of the application data directory
function love.filesystem.getAppdataDirectory() end

--- Gets the filesystem paths that will be searched for c libraries when require is called. The paths string returned by this function is a sequence of path templates separated by semicolons. The argument passed to ''require'' will be inserted in place of any question mark ('?') character in each template (after the dot characters in the argument passed to ''require'' are replaced by directory separators.) Additionally, any occurrence of a double question mark ('??') will be replaced by the name passed to require and the default library extension for the platform. The paths are relative to the game's source and save directories, as well as any paths mounted with love.filesystem.mount.
---@return string paths # The paths that the ''require'' function will check for c libraries in love's filesystem.
function love.filesystem.getCRequirePath() end

--- Returns a table with the names of files and subdirectories in the specified path. The table is not sorted in any way; the order is undefined. If the path passed to the function exists in the game and the save directory, it will list the files and directories from both places.
---@param dir string
---@return table<string> files # A sequence with the names of all files and subdirectories as strings.
function love.filesystem.getDirectoryItems(dir) end

--- Gets the write directory name for your game. Note that this only returns the name of the folder to store your files in, not the full path.
---@return string name # The identity that is used as write directory.
function love.filesystem.getIdentity() end

--- Gets information about the specified file or directory.
---@param path string
---@param filtertype? any
---@return table info # A table containing information about the specified path, or nil if nothing exists at the path. The table contains the following fields:
function love.filesystem.getInfo(path, filtertype) end

--- Gets the platform-specific absolute path of the directory containing a filepath. This can be used to determine whether a file is inside the save directory or the game's source .love.
---@param filepath string
---@return string realdir # The platform-specific full path of the directory containing the filepath.
function love.filesystem.getRealDirectory(filepath) end

--- Gets the filesystem paths that will be searched when require is called. The paths string returned by this function is a sequence of path templates separated by semicolons. The argument passed to ''require'' will be inserted in place of any question mark ('?') character in each template (after the dot characters in the argument passed to ''require'' are replaced by directory separators.) The paths are relative to the game's source and save directories, as well as any paths mounted with love.filesystem.mount.
---@return string paths # The paths that the ''require'' function will check in love's filesystem.
function love.filesystem.getRequirePath() end

--- Gets the full path to the designated save directory. This can be useful if you want to use the standard io library (or something else) to read or write in the save directory.
---@return string dir # The absolute path to the save directory.
function love.filesystem.getSaveDirectory() end

--- Returns the full path to the the .love file or directory. If the game is fused to the LÖVE executable, then the executable is returned.
---@return string path # The full platform-dependent path of the .love file or directory.
function love.filesystem.getSource() end

--- Returns the full path to the directory containing the .love file. If the game is fused to the LÖVE executable, then the directory containing the executable is returned. If love.filesystem.isFused is true, the path returned by this function can be passed to love.filesystem.mount, which will make the directory containing the main game (e.g. C:\Program Files\coolgame\) readable by love.filesystem.
---@return string path # The full platform-dependent path of the directory containing the .love file.
function love.filesystem.getSourceBaseDirectory() end

--- Returns the path of the user's directory
---@return string path # The path of the user's directory
function love.filesystem.getUserDirectory() end

--- Gets the current working directory.
---@return string cwd # The current working directory.
function love.filesystem.getWorkingDirectory() end

--- Initializes love.filesystem, will be called internally, so should not be used explicitly.
---@param appname string
function love.filesystem.init(appname) end

--- Gets whether the game is in fused mode or not. If a game is in fused mode, its save directory will be directly in the Appdata directory instead of Appdata/LOVE/. The game will also be able to load C Lua dynamic libraries which are located in the save directory. A game is in fused mode if the source .love has been fused to the executable (see Game Distribution), or if '--fused' has been given as a command-line argument when starting the game.
---@return boolean fused # True if the game is in fused mode, false otherwise.
function love.filesystem.isFused() end

--- Iterate over the lines in a file.
---@param name string
---@return function iterator # A function that iterates over all the lines in the file
function love.filesystem.lines(name) end

--- Loads a Lua file (but does not run it).
---@param name string
---@return function chunk # The loaded chunk.
---@return string errormsg # The error message if file could not be opened.
function love.filesystem.load(name) end

--- Mounts a zip file or folder in the game's save directory for reading. It is also possible to mount love.filesystem.getSourceBaseDirectory if the game is in fused mode.
---@param archive string
---@param mountpoint string
---@param appendToPath? boolean
---@return boolean success # True if the archive was successfully mounted, false otherwise.
function love.filesystem.mount(archive, mountpoint, appendToPath) end

--- Creates a new File object. It needs to be opened before it can be accessed.
---@param filename string
---@return File file # The new File object.
function love.filesystem.newFile(filename) end

--- Creates a new FileData object from a file on disk, or from a string in memory.
---@param contents string
---@param name string
---@return FileData data # The new FileData.
function love.filesystem.newFileData(contents, name) end

--- Read the contents of a file.
---@param name string
---@param size? number
---@return string contents # The file contents.
---@return number size # How many bytes have been read.
---@return nil contents # returns nil as content.
---@return string error # returns an error message.
function love.filesystem.read(name, size) end

--- Removes a file or empty directory.
---@param name string
---@return boolean success # True if the file/directory was removed, false otherwise.
function love.filesystem.remove(name) end

--- Sets the filesystem paths that will be searched for c libraries when require is called. The paths string returned by this function is a sequence of path templates separated by semicolons. The argument passed to ''require'' will be inserted in place of any question mark ('?') character in each template (after the dot characters in the argument passed to ''require'' are replaced by directory separators.) Additionally, any occurrence of a double question mark ('??') will be replaced by the name passed to require and the default library extension for the platform. The paths are relative to the game's source and save directories, as well as any paths mounted with love.filesystem.mount.
---@param paths string
function love.filesystem.setCRequirePath(paths) end

--- Sets the write directory for your game. Note that you can only set the name of the folder to store your files in, not the location.
---@param name string
function love.filesystem.setIdentity(name) end

--- Sets the filesystem paths that will be searched when require is called. The paths string given to this function is a sequence of path templates separated by semicolons. The argument passed to ''require'' will be inserted in place of any question mark ('?') character in each template (after the dot characters in the argument passed to ''require'' are replaced by directory separators.) The paths are relative to the game's source and save directories, as well as any paths mounted with love.filesystem.mount.
---@param paths string
function love.filesystem.setRequirePath(paths) end

--- Sets the source of the game, where the code is present. This function can only be called once, and is normally automatically done by LÖVE.
---@param path string
function love.filesystem.setSource(path) end

--- Sets whether love.filesystem follows symbolic links. It is enabled by default in version 0.10.0 and newer, and disabled by default in 0.9.2.
---@param enable boolean
function love.filesystem.setSymlinksEnabled(enable) end

--- Unmounts a zip file or folder previously mounted for reading with love.filesystem.mount.
---@param archive string
---@return boolean success # True if the archive was successfully unmounted, false otherwise.
function love.filesystem.unmount(archive) end

--- Write data to a file in the save directory. If the file existed already, it will be completely replaced by the new contents.
---@param name string
---@param data string
---@param size? number
---@return boolean success # If the operation was successful.
---@return string message # Error message if operation was unsuccessful.
function love.filesystem.write(name, data, size) end

--- Represents a file dropped onto the window. Note that the DroppedFile type can only be obtained from love.filedropped callback, and can't be constructed manually by the user.
function love.filesystem.DroppedFile() end

--- Represents a file on the filesystem. A function that takes a file path can also take a File.
function love.filesystem.File() end

--- Data representing the contents of a file.
function love.filesystem.FileData() end
