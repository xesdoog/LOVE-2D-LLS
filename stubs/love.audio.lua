-- Module: love.audio
love.audio = {}
--- Gets a list of the names of the currently enabled effects.
---@return table<string> effects # The list of the names of the currently enabled effects.
function love.getActiveEffects() end

--- Gets the current number of simultaneously playing sources.
---@return number count # The current number of simultaneously playing sources.
function love.getActiveSourceCount() end

--- Returns the distance attenuation model.
---@return DistanceModel model # The current distance model. The default is 'inverseclamped'.
function love.getDistanceModel() end

--- Gets the current global scale factor for velocity-based doppler effects.
---@return number scale # The current doppler scale factor.
function love.getDopplerScale() end

--- Gets the settings associated with an effect.
---@param name string
---@return table settings # The settings associated with the effect.
function love.getEffect(name) end

--- Gets the maximum number of active effects supported by the system.
---@return number maximum # The maximum number of active effects.
function love.getMaxSceneEffects() end

--- Gets the maximum number of active Effects in a single Source object, that the system can support.
---@return number maximum # The maximum number of active Effects per Source.
function love.getMaxSourceEffects() end

--- Returns the orientation of the listener.
---@return number fx # Forward x of the listener orientation.
---@return number fy # Forward y of the listener orientation.
---@return number fz # Forward z of the listener orientation.
---@return number ux # Up x of the listener orientation.
---@return number uy # Up y of the listener orientation.
---@return number uz # Up z of the listener orientation.
function love.getOrientation() end

--- Returns the position of the listener. Please note that positional audio only works for mono (i.e. non-stereo) sources.
---@return number x # The X position of the listener.
---@return number y # The Y position of the listener.
---@return number z # The Z position of the listener.
function love.getPosition() end

--- Gets a list of RecordingDevices on the system. The first device in the list is the user's default recording device. The list may be empty if there are no microphones connected to the system. Audio recording is currently not supported on iOS.
---@return table<RecordingDevice> devices # The list of connected recording devices.
function love.getRecordingDevices() end

--- Returns the velocity of the listener.
---@return number x # The X velocity of the listener.
---@return number y # The Y velocity of the listener.
---@return number z # The Z velocity of the listener.
function love.getVelocity() end

--- Returns the master volume.
---@return number volume # The current master volume
function love.getVolume() end

--- Gets whether audio effects are supported in the system.
---@return boolean supported # True if effects are supported, false otherwise.
function love.isEffectsSupported() end

--- Creates a new Source usable for real-time generated sound playback with Source:queue.
---@param samplerate number
---@param bitdepth number
---@param channels number
---@param buffercount? number
---@return Source source # The new Source usable with Source:queue.
function love.newQueueableSource(samplerate, bitdepth, channels, buffercount) end

--- Creates a new Source from a filepath, File, Decoder or SoundData. Sources created from SoundData are always static.
---@param filename string
---@param type SourceType
---@return Source source # A new Source that can play the specified audio.
function love.newSource(filename, type) end

--- Pauses specific or all currently played Sources.
---@return table<Source> Sources # A table containing a list of Sources that were paused by this call.
function love.pause() end

--- Plays the specified Source.
---@param source Source
function love.play(source) end

--- Sets the distance attenuation model.
---@param model DistanceModel
function love.setDistanceModel(model) end

--- Sets a global scale factor for velocity-based doppler effects. The default scale value is 1.
---@param scale number
function love.setDopplerScale(scale) end

--- Defines an effect that can be applied to a Source. Not all system supports audio effects. Use love.audio.isEffectsSupported to check.
---@param name string
---@param settings table
---@return boolean success # Whether the effect was successfully created.
function love.setEffect(name, settings) end

--- Sets whether the system should mix the audio with the system's audio.
---@param mix boolean
---@return boolean success # True if the change succeeded, false otherwise.
function love.setMixWithSystem(mix) end

--- Sets the orientation of the listener.
---@param fx, fy, fz number
---@param ux, uy, uz number
function love.setOrientation(fx, fy, fz, ux, uy, uz) end

--- Sets the position of the listener, which determines how sounds play.
---@param x number
---@param y number
---@param z number
function love.setPosition(x, y, z) end

--- Sets the velocity of the listener.
---@param x number
---@param y number
---@param z number
function love.setVelocity(x, y, z) end

--- Sets the master volume.
---@param volume number
function love.setVolume(volume) end

--- Stops currently played sources.
function love.stop() end
