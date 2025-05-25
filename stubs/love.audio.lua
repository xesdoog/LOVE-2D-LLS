---@meta

-- Module: love.audio
love.audio = {}
--- Gets a list of the names of the currently enabled effects.
---@return table<string> effects # The list of the names of the currently enabled effects.
function love.audio.getActiveEffects() end

--- Gets the current number of simultaneously playing sources.
---@return number count # The current number of simultaneously playing sources.
function love.audio.getActiveSourceCount() end

--- Returns the distance attenuation model.
---@return DistanceModel model # The current distance model. The default is 'inverseclamped'.
function love.audio.getDistanceModel() end

--- Gets the current global scale factor for velocity-based doppler effects.
---@return number scale # The current doppler scale factor.
function love.audio.getDopplerScale() end

--- Gets the settings associated with an effect.
---@param name string
---@return table settings # The settings associated with the effect.
function love.audio.getEffect(name) end

--- Gets the maximum number of active effects supported by the system.
---@return number maximum # The maximum number of active effects.
function love.audio.getMaxSceneEffects() end

--- Gets the maximum number of active Effects in a single Source object, that the system can support.
---@return number maximum # The maximum number of active Effects per Source.
function love.audio.getMaxSourceEffects() end

--- Returns the orientation of the listener.
---@return number fx # Forward x of the listener orientation.
---@return number fy # Forward y of the listener orientation.
---@return number fz # Forward z of the listener orientation.
---@return number ux # Up x of the listener orientation.
---@return number uy # Up y of the listener orientation.
---@return number uz # Up z of the listener orientation.
function love.audio.getOrientation() end

--- Returns the position of the listener. Please note that positional audio only works for mono (i.e. non-stereo) sources.
---@return number x # The X position of the listener.
---@return number y # The Y position of the listener.
---@return number z # The Z position of the listener.
function love.audio.getPosition() end

--- Gets a list of RecordingDevices on the system. The first device in the list is the user's default recording device. The list may be empty if there are no microphones connected to the system. Audio recording is currently not supported on iOS.
---@return table<RecordingDevice> devices # The list of connected recording devices.
function love.audio.getRecordingDevices() end

--- Returns the velocity of the listener.
---@return number x # The X velocity of the listener.
---@return number y # The Y velocity of the listener.
---@return number z # The Z velocity of the listener.
function love.audio.getVelocity() end

--- Returns the master volume.
---@return number volume # The current master volume
function love.audio.getVolume() end

--- Gets whether audio effects are supported in the system.
---@return boolean supported # True if effects are supported, false otherwise.
function love.audio.isEffectsSupported() end

--- Creates a new Source usable for real-time generated sound playback with Source:queue.
---@param samplerate number
---@param bitdepth number
---@param channels number
---@param buffercount? number
---@return Source source # The new Source usable with Source:queue.
function love.audio.newQueueableSource(samplerate, bitdepth, channels, buffercount) end

--- Creates a new Source from a filepath, File, Decoder or SoundData. Sources created from SoundData are always static.
---@param filename string
---@param type any
---@return Source source # A new Source that can play the specified audio.
function love.audio.newSource(filename, type) end

--- Pauses specific or all currently played Sources.
---@return table<Source> Sources # A table containing a list of Sources that were paused by this call.
function love.audio.pause() end

--- Plays the specified Source.
---@param source any
function love.audio.play(source) end

--- Sets the distance attenuation model.
---@param model any
function love.audio.setDistanceModel(model) end

--- Sets a global scale factor for velocity-based doppler effects. The default scale value is 1.
---@param scale number
function love.audio.setDopplerScale(scale) end

--- Defines an effect that can be applied to a Source. Not all system supports audio effects. Use love.audio.isEffectsSupported to check.
---@param name string
---@param settings table
---@return boolean success # Whether the effect was successfully created.
function love.audio.setEffect(name, settings) end

--- Sets whether the system should mix the audio with the system's audio.
---@param mix boolean
---@return boolean success # True if the change succeeded, false otherwise.
function love.audio.setMixWithSystem(mix) end

--- Sets the orientation of the listener.
---@param fx, fy, fz number
---@param ux, uy, uz number
function love.audio.setOrientation(fx, fy, fz, ux, uy, uz) end

--- Sets the position of the listener, which determines how sounds play.
---@param x number
---@param y number
---@param z number
function love.audio.setPosition(x, y, z) end

--- Sets the velocity of the listener.
---@param x number
---@param y number
---@param z number
function love.audio.setVelocity(x, y, z) end

--- Sets the master volume.
---@param volume number
function love.audio.setVolume(volume) end

--- Stops currently played sources.
function love.audio.stop() end

--- Represents an audio input device capable of recording sounds.
function love.audio.RecordingDevice() end

--- A Source represents audio you can play back. You can do interesting things with Sources, like set the volume, pitch, and its position relative to the listener. Please note that positional audio only works for mono (i.e. non-stereo) sources. The Source controls (play/pause/stop) act according to the following state table.
function love.audio.Source() end
