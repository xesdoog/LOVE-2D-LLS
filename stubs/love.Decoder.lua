-- Module: love.Decoder
love.Decoder = {}
--- Creates a new copy of current decoder. The new decoder will start decoding from the beginning of the audio stream.
---@return Decoder decoder # New copy of the decoder.
function love.clone() end

--- Decodes the audio and returns a SoundData object containing the decoded audio data.
---@return SoundData soundData # Decoded audio data.
function love.decode() end

--- Returns the number of bits per sample.
---@return number bitDepth # Either 8, or 16.
function love.getBitDepth() end

--- Returns the number of channels in the stream.
---@return number channels # 1 for mono, 2 for stereo.
function love.getChannelCount() end

--- Gets the duration of the sound file. It may not always be sample-accurate, and it may return -1 if the duration cannot be determined at all.
---@return number duration # The duration of the sound file in seconds, or -1 if it cannot be determined.
function love.getDuration() end

--- Returns the sample rate of the Decoder.
---@return number rate # Number of samples per second.
function love.getSampleRate() end

--- Sets the currently playing position of the Decoder.
---@param offset number
function love.seek(offset) end
