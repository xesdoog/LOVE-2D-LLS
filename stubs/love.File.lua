---@meta

-- Module: love.File
love.File = {}
--- Closes a File.
---@return boolean success # Whether closing was successful.
function love.File.close() end

--- Flushes any buffered written data in the file to the disk.
---@return boolean success # Whether the file successfully flushed any buffered data to the disk.
---@return string err # The error string, if an error occurred and the file could not be flushed.
function love.File.flush() end

--- Gets the buffer mode of a file.
---@return BufferMode mode # The current buffer mode of the file.
---@return number size # The maximum size in bytes of the file's buffer.
function love.File.getBuffer() end

--- Gets the filename that the File object was created with. If the file object originated from the love.filedropped callback, the filename will be the full platform-dependent file path.
---@return string filename # The filename of the File.
function love.File.getFilename() end

--- Gets the FileMode the file has been opened with.
---@return FileMode mode # The mode this file has been opened with.
function love.File.getMode() end

--- Returns the file size.
---@return number size # The file size in bytes.
function love.File.getSize() end

--- Gets whether end-of-file has been reached.
---@return boolean eof # Whether EOF has been reached.
function love.File.isEOF() end

--- Gets whether the file is open.
---@return boolean open # True if the file is currently open, false otherwise.
function love.File.isOpen() end

--- Iterate over all the lines in a file.
---@return function iterator # The iterator (can be used in for loops).
function love.File.lines() end

--- Open the file for write, read or append.
---@param mode any
---@return boolean ok # True on success, false otherwise.
---@return string err # The error string if an error occurred.
function love.File.open(mode) end

--- Read a number of bytes from a file.
---@param bytes? number
---@return string contents # The contents of the read bytes.
---@return number size # How many bytes have been read.
function love.File.read(bytes) end

--- Seek to a position in a file
---@param pos number
---@return boolean success # Whether the operation was successful
function love.File.seek(pos) end

--- Sets the buffer mode for a file opened for writing or appending. Files with buffering enabled will not write data to the disk until the buffer size limit is reached, depending on the buffer mode. File:flush will force any buffered data to be written to the disk.
---@param mode any
---@param size? number
---@return boolean success # Whether the buffer mode was successfully set.
---@return string errorstr # The error string, if the buffer mode could not be set and an error occurred.
function love.File.setBuffer(mode, size) end

--- Returns the position in the file.
---@return number pos # The current position.
function love.File.tell() end

--- Write data to a file.
---@param data string
---@param size? number
---@return boolean success # Whether the operation was successful.
---@return string err # The error string if an error occurred.
function love.File.write(data, size) end
