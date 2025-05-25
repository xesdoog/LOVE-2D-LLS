---@meta

-- Module: love.Source
love.Source = {}
--- Creates an identical copy of the Source in the stopped state. Static Sources will use significantly less memory and take much less time to be created if Source:clone is used to create them instead of love.audio.newSource, so this method should be preferred when making multiple Sources which play the same sound.
---@return Source source # The new identical copy of this Source.
function love.Source.clone() end

--- Gets a list of the Source's active effect names.
---@return table<string> effects # A list of the source's active effect names.
function love.Source.getActiveEffects() end

--- Gets the amount of air absorption applied to the Source. By default the value is set to 0 which means that air absorption effects are disabled. A value of 1 will apply high frequency attenuation to the Source at a rate of 0.05 dB per meter.
---@return number amount # The amount of air absorption applied to the Source.
function love.Source.getAirAbsorption() end

--- Gets the reference and maximum attenuation distances of the Source. The values, combined with the current DistanceModel, affect how the Source's volume attenuates based on distance from the listener.
---@return number ref # The current reference attenuation distance. If the current DistanceModel is clamped, this is the minimum distance before the Source is no longer attenuated.
---@return number max # The current maximum attenuation distance.
function love.Source.getAttenuationDistances() end

--- Gets the number of channels in the Source. Only 1-channel (mono) Sources can use directional and positional effects.
---@return number channels # 1 for mono, 2 for stereo.
function love.Source.getChannelCount() end

--- Gets the Source's directional volume cones. Together with Source:setDirection, the cone angles allow for the Source's volume to vary depending on its direction.
---@return number innerAngle # The inner angle from the Source's direction, in radians. The Source will play at normal volume if the listener is inside the cone defined by this angle.
---@return number outerAngle # The outer angle from the Source's direction, in radians. The Source will play at a volume between the normal and outer volumes, if the listener is in between the cones defined by the inner and outer angles.
---@return number outerVolume # The Source's volume when the listener is outside both the inner and outer cone angles.
function love.Source.getCone() end

--- Gets the direction of the Source.
---@return number x # The X part of the direction vector.
---@return number y # The Y part of the direction vector.
---@return number z # The Z part of the direction vector.
function love.Source.getDirection() end

--- Gets the duration of the Source. For streaming Sources it may not always be sample-accurate, and may return -1 if the duration cannot be determined at all.
---@param unit? any
---@return number duration # The duration of the Source, or -1 if it cannot be determined.
function love.Source.getDuration(unit) end

--- Gets the filter settings associated to a specific effect. This function returns nil if the effect was applied with no filter settings associated to it.
---@param name string
---@param filtersettings? table
---@return table filtersettings # The settings for the filter associated to this effect, or nil if the effect is not present in this Source or has no filter associated. The table has the following fields:
function love.Source.getEffect(name, filtersettings) end

--- Gets the filter settings currently applied to the Source.
---@return table settings # The filter settings to use for this Source, or nil if the Source has no active filter. The table has the following fields:
function love.Source.getFilter() end

--- Gets the number of free buffer slots in a queueable Source. If the queueable Source is playing, this value will increase up to the amount the Source was created with. If the queueable Source is stopped, it will process all of its internal buffers first, in which case this function will always return the amount it was created with.
---@return number buffers # How many more SoundData objects can be queued up.
function love.Source.getFreeBufferCount() end

--- Gets the current pitch of the Source.
---@return number pitch # The pitch, where 1.0 is normal.
function love.Source.getPitch() end

--- Gets the position of the Source.
---@return number x # The X position of the Source.
---@return number y # The Y position of the Source.
---@return number z # The Z position of the Source.
function love.Source.getPosition() end

--- Returns the rolloff factor of the source.
---@return number rolloff # The rolloff factor.
function love.Source.getRolloff() end

--- Gets the type of the Source.
---@return SourceType sourcetype # The type of the source.
function love.Source.getType() end

--- Gets the velocity of the Source.
---@return number x # The X part of the velocity vector.
---@return number y # The Y part of the velocity vector.
---@return number z # The Z part of the velocity vector.
function love.Source.getVelocity() end

--- Gets the current volume of the Source.
---@return number volume # The volume of the Source, where 1.0 is normal volume.
function love.Source.getVolume() end

--- Returns the volume limits of the source.
---@return number min # The minimum volume.
---@return number max # The maximum volume.
function love.Source.getVolumeLimits() end

--- Returns whether the Source will loop.
---@return boolean loop # True if the Source will loop, false otherwise.
function love.Source.isLooping() end

--- Returns whether the Source is playing.
---@return boolean playing # True if the Source is playing, false otherwise.
function love.Source.isPlaying() end

--- Gets whether the Source's position, velocity, direction, and cone angles are relative to the listener.
---@return boolean relative # True if the position, velocity, direction and cone angles are relative to the listener, false if they're absolute.
function love.Source.isRelative() end

--- Pauses the Source.
function love.Source.pause() end

--- Starts playing the Source.
---@return boolean success # Whether the Source was able to successfully start playing.
function love.Source.play() end

--- Queues SoundData for playback in a queueable Source. This method requires the Source to be created via love.audio.newQueueableSource.
---@param sounddata any
---@return boolean success # True if the data was successfully queued for playback, false if there were no available buffers to use for queueing.
function love.Source.queue(sounddata) end

--- Sets the currently playing position of the Source.
---@param offset number
---@param unit? any
function love.Source.seek(offset, unit) end

--- Sets the amount of air absorption applied to the Source. By default the value is set to 0 which means that air absorption effects are disabled. A value of 1 will apply high frequency attenuation to the Source at a rate of 0.05 dB per meter. Air absorption can simulate sound transmission through foggy air, dry air, smoky atmosphere, etc. It can be used to simulate different atmospheric conditions within different locations in an area.
---@param amount number
function love.Source.setAirAbsorption(amount) end

--- Sets the reference and maximum attenuation distances of the Source. The parameters, combined with the current DistanceModel, affect how the Source's volume attenuates based on distance. Distance attenuation is only applicable to Sources based on mono (rather than stereo) audio.
---@param ref number
---@param max number
function love.Source.setAttenuationDistances(ref, max) end

--- Sets the Source's directional volume cones. Together with Source:setDirection, the cone angles allow for the Source's volume to vary depending on its direction.
---@param innerAngle number
---@param outerAngle number
---@param outerVolume? number
function love.Source.setCone(innerAngle, outerAngle, outerVolume) end

--- Sets the direction vector of the Source. A zero vector makes the source non-directional.
---@param x number
---@param y number
---@param z number
function love.Source.setDirection(x, y, z) end

--- Applies an audio effect to the Source. The effect must have been previously defined using love.audio.setEffect.
---@param name string
---@param enable? boolean
---@return boolean success # Whether the effect was successfully applied to this Source.
function love.Source.setEffect(name, enable) end

--- Sets a low-pass, high-pass, or band-pass filter to apply when playing the Source.
---@param settings table
---@return boolean success # Whether the filter was successfully applied to the Source.
function love.Source.setFilter(settings) end

--- Sets whether the Source should loop.
---@param loop boolean
function love.Source.setLooping(loop) end

--- Sets the pitch of the Source.
---@param pitch number
function love.Source.setPitch(pitch) end

--- Sets the position of the Source. Please note that this only works for mono (i.e. non-stereo) sound files!
---@param x number
---@param y number
---@param z number
function love.Source.setPosition(x, y, z) end

--- Sets whether the Source's position, velocity, direction, and cone angles are relative to the listener, or absolute. By default, all sources are absolute and therefore relative to the origin of love's coordinate system 0, 0. Only absolute sources are affected by the position of the listener. Please note that positional audio only works for mono (i.e. non-stereo) sources. 
---@param enable? boolean
function love.Source.setRelative(enable) end

--- Sets the rolloff factor which affects the strength of the used distance attenuation. Extended information and detailed formulas can be found in the chapter '3.4. Attenuation By Distance' of OpenAL 1.1 specification.
---@param rolloff number
function love.Source.setRolloff(rolloff) end

--- Sets the velocity of the Source. This does '''not''' change the position of the Source, but lets the application know how it has to calculate the doppler effect.
---@param x number
---@param y number
---@param z number
function love.Source.setVelocity(x, y, z) end

--- Sets the current volume of the Source.
---@param volume number
function love.Source.setVolume(volume) end

--- Sets the volume limits of the source. The limits have to be numbers from 0 to 1.
---@param min number
---@param max number
function love.Source.setVolumeLimits(min, max) end

--- Stops a Source.
function love.Source.stop() end

--- Gets the currently playing position of the Source.
---@param unit? any
---@return number position # The currently playing position of the Source.
function love.Source.tell(unit) end
