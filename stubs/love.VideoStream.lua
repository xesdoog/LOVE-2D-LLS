-- Module: love.VideoStream
love.VideoStream = {}
--- Gets the filename of the VideoStream.
---@return string filename # The filename of the VideoStream
function love.getFilename() end

--- Gets whether the VideoStream is playing.
---@return boolean playing # Whether the VideoStream is playing.
function love.isPlaying() end

--- Pauses the VideoStream.
function love.pause() end

--- Plays the VideoStream.
function love.play() end

--- Rewinds the VideoStream. Synonym to VideoStream:seek(0).
function love.rewind() end

--- Sets the current playback position of the VideoStream.
---@param offset number
function love.seek(offset) end

--- Gets the current playback position of the VideoStream.
---@return number seconds # The number of seconds sionce the beginning of the VideoStream.
function love.tell() end
