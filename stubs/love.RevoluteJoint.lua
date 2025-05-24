-- Module: love.RevoluteJoint
love.RevoluteJoint = {}
--- Checks whether limits are enabled.
---@return boolean enabled # True if enabled, false otherwise.
function love.areLimitsEnabled() end

--- Get the current joint angle.
---@return number angle # The joint angle in radians.
function love.getJointAngle() end

--- Get the current joint angle speed.
---@return number s # Joint angle speed in radians/second.
function love.getJointSpeed() end

--- Gets the joint limits.
---@return number lower # The lower limit, in radians.
---@return number upper # The upper limit, in radians.
function love.getLimits() end

--- Gets the lower limit.
---@return number lower # The lower limit, in radians.
function love.getLowerLimit() end

--- Gets the maximum motor force.
---@return number f # The maximum motor force, in Nm.
function love.getMaxMotorTorque() end

--- Gets the motor speed.
---@return number s # The motor speed, radians per second.
function love.getMotorSpeed() end

--- Get the current motor force.
---@return number f # The current motor force, in Nm.
function love.getMotorTorque() end

--- Gets the reference angle.
---@return number angle # The reference angle in radians.
function love.getReferenceAngle() end

--- Gets the upper limit.
---@return number upper # The upper limit, in radians.
function love.getUpperLimit() end

--- Checks whether limits are enabled.
---@return boolean enabled # True if enabled, false otherwise.
function love.hasLimitsEnabled() end

--- Checks whether the motor is enabled.
---@return boolean enabled # True if enabled, false if disabled.
function love.isMotorEnabled() end

--- Sets the limits.
---@param lower number
---@param upper number
function love.setLimits(lower, upper) end

--- Enables/disables the joint limit.
---@param enable boolean
function love.setLimitsEnabled(enable) end

--- Sets the lower limit.
---@param lower number
function love.setLowerLimit(lower) end

--- Set the maximum motor force.
---@param f number
function love.setMaxMotorTorque(f) end

--- Enables/disables the joint motor.
---@param enable boolean
function love.setMotorEnabled(enable) end

--- Sets the motor speed.
---@param s number
function love.setMotorSpeed(s) end

--- Sets the upper limit.
---@param upper number
function love.setUpperLimit(upper) end
