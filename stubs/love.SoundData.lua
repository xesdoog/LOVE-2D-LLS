---@meta

-- Module: love.SoundData
love.SoundData = {}
--- Returns the number of bits per sample.
---@return number bitdepth # Either 8, or 16.
function love.SoundData.getBitDepth() end

--- Returns the number of channels in the SoundData.
---@return number channels # 1 for mono, 2 for stereo.
function love.SoundData.getChannelCount() end

--- Gets the duration of the sound data.
---@return number duration # The duration of the sound data in seconds.
function love.SoundData.getDuration() end

--- Gets the value of the sample-point at the specified position. For stereo SoundData objects, the data from the left and right channels are interleaved in that order.
---@param i number
---@return number sample # The normalized samplepoint (range -1.0 to 1.0).
function love.SoundData.getSample(i) end

--- Returns the number of samples per channel of the SoundData.
---@return number count # Total number of samples.
function love.SoundData.getSampleCount() end

--- Returns the sample rate of the SoundData.
---@return number rate # Number of samples per second.
function love.SoundData.getSampleRate() end

--- Sets the value of the sample-point at the specified position. For stereo SoundData objects, the data from the left and right channels are interleaved in that order.
---@param i number
---@param sample number
function love.SoundData.setSample(i, sample) end
