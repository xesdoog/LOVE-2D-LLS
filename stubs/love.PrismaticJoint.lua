-- Module: love.PrismaticJoint
love.PrismaticJoint = {}
--- Checks whether the limits are enabled.
---@return boolean enabled # True if enabled, false otherwise.
function love.areLimitsEnabled() end

--- Gets the world-space axis vector of the Prismatic Joint.
---@return number x # The x-axis coordinate of the world-space axis vector.
---@return number y # The y-axis coordinate of the world-space axis vector.
function love.getAxis() end

--- Get the current joint angle speed.
---@return number s # Joint angle speed in meters/second.
function love.getJointSpeed() end

--- Get the current joint translation.
---@return number t # Joint translation, usually in meters..
function love.getJointTranslation() end

--- Gets the joint limits.
---@return number lower # The lower limit, usually in meters.
---@return number upper # The upper limit, usually in meters.
function love.getLimits() end

--- Gets the lower limit.
---@return number lower # The lower limit, usually in meters.
function love.getLowerLimit() end

--- Gets the maximum motor force.
---@return number f # The maximum motor force, usually in N.
function love.getMaxMotorForce() end

--- Returns the current motor force.
---@param invdt number
---@return number force # The force on the motor in newtons.
function love.getMotorForce(invdt) end

--- Gets the motor speed.
---@return number s # The motor speed, usually in meters per second.
function love.getMotorSpeed() end

--- Gets the reference angle.
---@return number angle # The reference angle in radians.
function love.getReferenceAngle() end

--- Gets the upper limit.
---@return number upper # The upper limit, usually in meters.
function love.getUpperLimit() end

--- Checks whether the motor is enabled.
---@return boolean enabled # True if enabled, false if disabled.
function love.isMotorEnabled() end

--- Sets the limits.
---@param lower number
---@param upper number
function love.setLimits(lower, upper) end

--- Enables/disables the joint limit.
---@return boolean enable # True if enabled, false if disabled.
function love.setLimitsEnabled() end

--- Sets the lower limit.
---@param lower number
function love.setLowerLimit(lower) end

--- Set the maximum motor force.
---@param f number
function love.setMaxMotorForce(f) end

--- Enables/disables the joint motor.
---@param enable boolean
function love.setMotorEnabled(enable) end

--- Sets the motor speed.
---@param s number
function love.setMotorSpeed(s) end

--- Sets the upper limit.
---@param upper number
function love.setUpperLimit(upper) end
