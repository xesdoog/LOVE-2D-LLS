---@meta

-- Module: love.data
love.data = {}
--- Compresses a string or data using a specific compression algorithm.
---@param container any
---@param format any
---@param rawstring string
---@param level? number
---@return CompressedData or string compressedData # CompressedData/string which contains the compressed version of rawstring.
function love.data.compress(container, format, rawstring, level) end

--- Decode Data or a string from any of the EncodeFormats to Data or string.
---@param container any
---@param format any
---@param sourceString string
---@return ByteData or string decoded # ByteData/string which contains the decoded version of source.
function love.data.decode(container, format, sourceString) end

--- Decompresses a CompressedData or previously compressed string or Data object.
---@param container any
---@param compressedData any
---@return Data or string decompressedData # Data/string containing the raw decompressed data.
function love.data.decompress(container, compressedData) end

--- Encode Data or a string to a Data or string in one of the EncodeFormats.
---@param container any
---@param format any
---@param sourceString string
---@param linelength? number
---@return ByteData or string encoded # ByteData/string which contains the encoded version of source.
function love.data.encode(container, format, sourceString, linelength) end

--- Gets the size in bytes that a given format used with love.data.pack will use. This function behaves the same as Lua 5.3's string.packsize.
---@param format string
---@return number size # The size in bytes that the packed data will use.
function love.data.getPackedSize(format) end

--- Compute the message digest of a string using a specified hash algorithm.
---@param hashFunction any
---@param string string
---@return string rawdigest # Raw message digest string.
function love.data.hash(hashFunction, string) end

--- Creates a new Data object containing arbitrary bytes. Data:getPointer along with LuaJIT's FFI can be used to manipulate the contents of the ByteData object after it has been created.
---@param datastring string
---@return ByteData bytedata # The new Data object.
function love.data.newByteData(datastring) end

--- Creates a new Data referencing a subsection of an existing Data object.
---@param data any
---@param offset number
---@param size number
---@return Data view # The new Data view.
function love.data.newDataView(data, offset, size) end

--- Packs (serializes) simple Lua values. This function behaves the same as Lua 5.3's string.pack.
---@param container any
---@param format string
---@param v1 any
---@param ... any
---@return Data or string data # Data/string which contains the serialized data.
function love.data.pack(container, format, v1, ...) end

--- Unpacks (deserializes) a byte-string or Data into simple Lua values. This function behaves the same as Lua 5.3's string.unpack.
---@param format string
---@param datastring string
---@param pos? number
---@return number or boolean or string v1 # The first value (number, boolean, or string) that was unpacked.
---@return number or boolean or string ... # Additional unpacked values.
---@return number index # The index of the first unread byte in the data string.
function love.data.unpack(format, datastring, pos) end

--- Data object containing arbitrary bytes in an contiguous memory. There are currently no LÖVE functions provided for manipulating the contents of a ByteData, but Data:getPointer can be used with LuaJIT's FFI to access and write to the contents directly.
function love.data.ByteData() end

--- Represents byte data compressed using a specific algorithm. love.data.decompress can be used to de-compress the data (or love.math.decompress in 0.10.2 or earlier).
function love.data.CompressedData() end
