-- Module: love.data
love.data = {}
--- Compresses a string or data using a specific compression algorithm.
---@param container ContainerType
---@param format CompressedDataFormat
---@param rawstring string
---@param level? number
---@return CompressedData or string compressedData # CompressedData/string which contains the compressed version of rawstring.
function love.compress(container, format, rawstring, level) end

--- Decode Data or a string from any of the EncodeFormats to Data or string.
---@param container ContainerType
---@param format EncodeFormat
---@param sourceString string
---@return ByteData or string decoded # ByteData/string which contains the decoded version of source.
function love.decode(container, format, sourceString) end

--- Decompresses a CompressedData or previously compressed string or Data object.
---@param container ContainerType
---@param compressedData CompressedData
---@return Data or string decompressedData # Data/string containing the raw decompressed data.
function love.decompress(container, compressedData) end

--- Encode Data or a string to a Data or string in one of the EncodeFormats.
---@param container ContainerType
---@param format EncodeFormat
---@param sourceString string
---@param linelength? number
---@return ByteData or string encoded # ByteData/string which contains the encoded version of source.
function love.encode(container, format, sourceString, linelength) end

--- Gets the size in bytes that a given format used with love.data.pack will use. This function behaves the same as Lua 5.3's string.packsize.
---@param format string
---@return number size # The size in bytes that the packed data will use.
function love.getPackedSize(format) end

--- Compute the message digest of a string using a specified hash algorithm.
---@param hashFunction HashFunction
---@param string string
---@return string rawdigest # Raw message digest string.
function love.hash(hashFunction, string) end

--- Creates a new Data object containing arbitrary bytes. Data:getPointer along with LuaJIT's FFI can be used to manipulate the contents of the ByteData object after it has been created.
---@param datastring string
---@return ByteData bytedata # The new Data object.
function love.newByteData(datastring) end

--- Creates a new Data referencing a subsection of an existing Data object.
---@param data Data
---@param offset number
---@param size number
---@return Data view # The new Data view.
function love.newDataView(data, offset, size) end

--- Packs (serializes) simple Lua values. This function behaves the same as Lua 5.3's string.pack.
---@param container ContainerType
---@param format string
---@param v1 number or boolean or string
---@param ... number or boolean or string
---@return Data or string data # Data/string which contains the serialized data.
function love.pack(container, format, v1, ...) end

--- Unpacks (deserializes) a byte-string or Data into simple Lua values. This function behaves the same as Lua 5.3's string.unpack.
---@param format string
---@param datastring string
---@param pos? number
---@return number or boolean or string v1 # The first value (number, boolean, or string) that was unpacked.
---@return number or boolean or string ... # Additional unpacked values.
---@return number index # The index of the first unread byte in the data string.
function love.unpack(format, datastring, pos) end
