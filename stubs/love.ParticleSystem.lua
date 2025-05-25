---@meta

-- Module: love.ParticleSystem
love.ParticleSystem = {}
--- Creates an identical copy of the ParticleSystem in the stopped state.
---@return ParticleSystem particlesystem # The new identical copy of this ParticleSystem.
function love.ParticleSystem.clone() end

--- Emits a burst of particles from the particle emitter.
---@param numparticles number
function love.ParticleSystem.emit(numparticles) end

--- Gets the maximum number of particles the ParticleSystem can have at once.
---@return number size # The maximum number of particles.
function love.ParticleSystem.getBufferSize() end

--- Gets the series of colors applied to the particle sprite. In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---@return number r1 # First color, red component (0-1).
---@return number g1 # First color, green component (0-1).
---@return number b1 # First color, blue component (0-1).
---@return number a1 # First color, alpha component (0-1).
---@return number r2 # Second color, red component (0-1).
---@return number g2 # Second color, green component (0-1).
---@return number b2 # Second color, blue component (0-1).
---@return number a2 # Second color, alpha component (0-1).
---@return number r8 # Eighth color, red component (0-1).
---@return number g8 # Eighth color, green component (0-1).
---@return number b8 # Eighth color, blue component (0-1).
---@return number a8 # Eighth color, alpha component (0-1).
function love.ParticleSystem.getColors() end

--- Gets the number of particles that are currently in the system.
---@return number count # The current number of live particles.
function love.ParticleSystem.getCount() end

--- Gets the direction of the particle emitter (in radians).
---@return number direction # The direction of the emitter (radians).
function love.ParticleSystem.getDirection() end

--- Gets the area-based spawn parameters for the particles.
---@return AreaSpreadDistribution distribution # The type of distribution for new particles.
---@return number dx # The maximum spawn distance from the emitter along the x-axis for uniform distribution, or the standard deviation along the x-axis for normal distribution.
---@return number dy # The maximum spawn distance from the emitter along the y-axis for uniform distribution, or the standard deviation along the y-axis for normal distribution.
---@return number angle # The angle in radians of the emission area.
---@return boolean directionRelativeToCenter # True if newly spawned particles will be oriented relative to the center of the emission area, false otherwise.
function love.ParticleSystem.getEmissionArea() end

--- Gets the amount of particles emitted per second.
---@return number rate # The amount of particles per second.
function love.ParticleSystem.getEmissionRate() end

--- Gets how long the particle system will emit particles (if -1 then it emits particles forever).
---@return number life # The lifetime of the emitter (in seconds).
function love.ParticleSystem.getEmitterLifetime() end

--- Gets the mode used when the ParticleSystem adds new particles.
---@return ParticleInsertMode mode # The mode used when the ParticleSystem adds new particles.
function love.ParticleSystem.getInsertMode() end

--- Gets the linear acceleration (acceleration along the x and y axes) for particles. Every particle created will accelerate along the x and y axes between xmin,ymin and xmax,ymax.
---@return number xmin # The minimum acceleration along the x axis.
---@return number ymin # The minimum acceleration along the y axis.
---@return number xmax # The maximum acceleration along the x axis.
---@return number ymax # The maximum acceleration along the y axis.
function love.ParticleSystem.getLinearAcceleration() end

--- Gets the amount of linear damping (constant deceleration) for particles.
---@return number min # The minimum amount of linear damping applied to particles.
---@return number max # The maximum amount of linear damping applied to particles.
function love.ParticleSystem.getLinearDamping() end

--- Gets the particle image's draw offset.
---@return number ox # The x coordinate of the particle image's draw offset.
---@return number oy # The y coordinate of the particle image's draw offset.
function love.ParticleSystem.getOffset() end

--- Gets the lifetime of the particles.
---@return number min # The minimum life of the particles (in seconds).
---@return number max # The maximum life of the particles (in seconds).
function love.ParticleSystem.getParticleLifetime() end

--- Gets the position of the emitter.
---@return number x # Position along x-axis.
---@return number y # Position along y-axis.
function love.ParticleSystem.getPosition() end

--- Gets the series of Quads used for the particle sprites.
---@return table<Quad> quads # A table containing the Quads used.
function love.ParticleSystem.getQuads() end

--- Gets the radial acceleration (away from the emitter).
---@return number min # The minimum acceleration.
---@return number max # The maximum acceleration.
function love.ParticleSystem.getRadialAcceleration() end

--- Gets the rotation of the image upon particle creation (in radians).
---@return number min # The minimum initial angle (radians).
---@return number max # The maximum initial angle (radians).
function love.ParticleSystem.getRotation() end

--- Gets the amount of size variation (0 meaning no variation and 1 meaning full variation between start and end).
---@return number variation # The amount of variation (0 meaning no variation and 1 meaning full variation between start and end).
function love.ParticleSystem.getSizeVariation() end

--- Gets the series of sizes by which the sprite is scaled. 1.0 is normal size. The particle system will interpolate between each size evenly over the particle's lifetime.
---@return number size1 # The first size.
---@return number size2 # The second size.
---@return number size8 # The eighth size.
function love.ParticleSystem.getSizes() end

--- Gets the speed of the particles.
---@return number min # The minimum linear speed of the particles.
---@return number max # The maximum linear speed of the particles.
function love.ParticleSystem.getSpeed() end

--- Gets the spin of the sprite.
---@return number min # The minimum spin (radians per second).
---@return number max # The maximum spin (radians per second).
---@return number variation # The degree of variation (0 meaning no variation and 1 meaning full variation between start and end).
function love.ParticleSystem.getSpin() end

--- Gets the amount of spin variation (0 meaning no variation and 1 meaning full variation between start and end).
---@return number variation # The amount of variation (0 meaning no variation and 1 meaning full variation between start and end).
function love.ParticleSystem.getSpinVariation() end

--- Gets the amount of directional spread of the particle emitter (in radians).
---@return number spread # The spread of the emitter (radians).
function love.ParticleSystem.getSpread() end

--- Gets the tangential acceleration (acceleration perpendicular to the particle's direction).
---@return number min # The minimum acceleration.
---@return number max # The maximum acceleration.
function love.ParticleSystem.getTangentialAcceleration() end

--- Gets the texture (Image or Canvas) used for the particles.
---@return Texture texture # The Image or Canvas used for the particles.
function love.ParticleSystem.getTexture() end

--- Gets whether particle angles and rotations are relative to their velocities. If enabled, particles are aligned to the angle of their velocities and rotate relative to that angle.
---@return boolean enable # True if relative particle rotation is enabled, false if it's disabled.
function love.ParticleSystem.hasRelativeRotation() end

--- Checks whether the particle system is actively emitting particles.
---@return boolean active # True if system is active, false otherwise.
function love.ParticleSystem.isActive() end

--- Checks whether the particle system is paused.
---@return boolean paused # True if system is paused, false otherwise.
function love.ParticleSystem.isPaused() end

--- Checks whether the particle system is stopped.
---@return boolean stopped # True if system is stopped, false otherwise.
function love.ParticleSystem.isStopped() end

--- Moves the position of the emitter. This results in smoother particle spawning behaviour than if ParticleSystem:setPosition is used every frame.
---@param x number
---@param y number
function love.ParticleSystem.moveTo(x, y) end

--- Pauses the particle emitter.
function love.ParticleSystem.pause() end

--- Resets the particle emitter, removing any existing particles and resetting the lifetime counter.
function love.ParticleSystem.reset() end

--- Sets the size of the buffer (the max allowed amount of particles in the system).
---@param size number
function love.ParticleSystem.setBufferSize(size) end

--- Sets a series of colors to apply to the particle sprite. The particle system will interpolate between each color evenly over the particle's lifetime. Arguments can be passed in groups of four, representing the components of the desired RGBA value, or as tables of RGBA component values, with a default alpha value of 1 if only three values are given. At least one color must be specified. A maximum of eight may be used. In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---@param r1 number
---@param g1 number
---@param b1 number
---@param a1? number
---@param ... number
function love.ParticleSystem.setColors(r1, g1, b1, a1, ...) end

--- Sets the direction the particles will be emitted in.
---@param direction number
function love.ParticleSystem.setDirection(direction) end

--- Sets area-based spawn parameters for the particles. Newly created particles will spawn in an area around the emitter based on the parameters to this function.
---@param distribution any
---@param dx number
---@param dy number
---@param angle? number
---@param directionRelativeToCenter? boolean
function love.ParticleSystem.setEmissionArea(distribution, dx, dy, angle, directionRelativeToCenter) end

--- Sets the amount of particles emitted per second.
---@param rate number
function love.ParticleSystem.setEmissionRate(rate) end

--- Sets how long the particle system should emit particles (if -1 then it emits particles forever).
---@param life number
function love.ParticleSystem.setEmitterLifetime(life) end

--- Sets the mode to use when the ParticleSystem adds new particles.
---@param mode any
function love.ParticleSystem.setInsertMode(mode) end

--- Sets the linear acceleration (acceleration along the x and y axes) for particles. Every particle created will accelerate along the x and y axes between xmin,ymin and xmax,ymax.
---@param xmin number
---@param ymin number
---@param xmax? number
---@param ymax? number
function love.ParticleSystem.setLinearAcceleration(xmin, ymin, xmax, ymax) end

--- Sets the amount of linear damping (constant deceleration) for particles.
---@param min number
---@param max? number
function love.ParticleSystem.setLinearDamping(min, max) end

--- Set the offset position which the particle sprite is rotated around. If this function is not used, the particles rotate around their center.
---@param x number
---@param y number
function love.ParticleSystem.setOffset(x, y) end

--- Sets the lifetime of the particles.
---@param min number
---@param max? number
function love.ParticleSystem.setParticleLifetime(min, max) end

--- Sets the position of the emitter.
---@param x number
---@param y number
function love.ParticleSystem.setPosition(x, y) end

--- Sets a series of Quads to use for the particle sprites. Particles will choose a Quad from the list based on the particle's current lifetime, allowing for the use of animated sprite sheets with ParticleSystems.
---@param quad1 any
---@param ... any
function love.ParticleSystem.setQuads(quad1, ...) end

--- Set the radial acceleration (away from the emitter).
---@param min number
---@param max? number
function love.ParticleSystem.setRadialAcceleration(min, max) end

--- Sets whether particle angles and rotations are relative to their velocities. If enabled, particles are aligned to the angle of their velocities and rotate relative to that angle.
---@param enable boolean
function love.ParticleSystem.setRelativeRotation(enable) end

--- Sets the rotation of the image upon particle creation (in radians).
---@param min number
---@param max? number
function love.ParticleSystem.setRotation(min, max) end

--- Sets the amount of size variation (0 meaning no variation and 1 meaning full variation between start and end).
---@param variation number
function love.ParticleSystem.setSizeVariation(variation) end

--- Sets a series of sizes by which to scale a particle sprite. 1.0 is normal size. The particle system will interpolate between each size evenly over the particle's lifetime. At least one size must be specified. A maximum of eight may be used.
---@param size1 number
---@param size2? number
---@param size8? number
function love.ParticleSystem.setSizes(size1, size2, size8) end

--- Sets the speed of the particles.
---@param min number
---@param max? number
function love.ParticleSystem.setSpeed(min, max) end

--- Sets the spin of the sprite.
---@param min number
---@param max? number
function love.ParticleSystem.setSpin(min, max) end

--- Sets the amount of spin variation (0 meaning no variation and 1 meaning full variation between start and end).
---@param variation number
function love.ParticleSystem.setSpinVariation(variation) end

--- Sets the amount of spread for the system.
---@param spread number
function love.ParticleSystem.setSpread(spread) end

--- Sets the tangential acceleration (acceleration perpendicular to the particle's direction).
---@param min number
---@param max? number
function love.ParticleSystem.setTangentialAcceleration(min, max) end

--- Sets the texture (Image or Canvas) to be used for the particles.
---@param texture any
function love.ParticleSystem.setTexture(texture) end

--- Starts the particle emitter.
function love.ParticleSystem.start() end

--- Stops the particle emitter, resetting the lifetime counter.
function love.ParticleSystem.stop() end

--- Updates the particle system; moving, creating and killing particles.
---@param dt number
function love.ParticleSystem.update(dt) end
