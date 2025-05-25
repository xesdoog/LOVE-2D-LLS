---@meta

-- Module: love.RecordingDevice
love.RecordingDevice = {}
--- Gets the number of bits per sample in the data currently being recorded.
---@return number bits # The number of bits per sample in the data that's currently being recorded.
function love.RecordingDevice.getBitDepth() end

--- Gets the number of channels currently being recorded (mono or stereo).
---@return number channels # The number of channels being recorded (1 for mono, 2 for stereo).
function love.RecordingDevice.getChannelCount() end

--- Gets all recorded audio SoundData stored in the device's internal ring buffer. The internal ring buffer is cleared when this function is called, so calling it again will only get audio recorded after the previous call. If the device's internal ring buffer completely fills up before getData is called, the oldest data that doesn't fit into the buffer will be lost.
---@return SoundData data # The recorded audio data, or nil if the device isn't recording.
function love.RecordingDevice.getData() end

--- Gets the name of the recording device.
---@return string name # The name of the device.
function love.RecordingDevice.getName() end

--- Gets the number of currently recorded samples.
---@return number samples # The number of samples that have been recorded so far.
function love.RecordingDevice.getSampleCount() end

--- Gets the number of samples per second currently being recorded.
---@return number rate # The number of samples being recorded per second (sample rate).
function love.RecordingDevice.getSampleRate() end

--- Gets whether the device is currently recording.
---@return boolean recording # True if the recording, false otherwise.
function love.RecordingDevice.isRecording() end

--- Begins recording audio using this device.
---@param samplecount number
---@param samplerate? number
---@param bitdepth? number
---@param channels? number
---@return boolean success # True if the device successfully began recording using the specified parameters, false if not.
function love.RecordingDevice.start(samplecount, samplerate, bitdepth, channels) end

--- Stops recording audio from this device. Any sound data currently in the device's buffer will be returned.
---@return SoundData data # The sound data currently in the device's buffer, or nil if the device wasn't recording.
function love.RecordingDevice.stop() end
