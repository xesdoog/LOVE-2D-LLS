---@meta

-- Module: love.RevoluteJoint
love.RevoluteJoint = {}
--- Checks whether limits are enabled.
---@return boolean enabled # True if enabled, false otherwise.
function love.RevoluteJoint.areLimitsEnabled() end

--- Get the current joint angle.
---@return number angle # The joint angle in radians.
function love.RevoluteJoint.getJointAngle() end

--- Get the current joint angle speed.
---@return number s # Joint angle speed in radians/second.
function love.RevoluteJoint.getJointSpeed() end

--- Gets the joint limits.
---@return number lower # The lower limit, in radians.
---@return number upper # The upper limit, in radians.
function love.RevoluteJoint.getLimits() end

--- Gets the lower limit.
---@return number lower # The lower limit, in radians.
function love.RevoluteJoint.getLowerLimit() end

--- Gets the maximum motor force.
---@return number f # The maximum motor force, in Nm.
function love.RevoluteJoint.getMaxMotorTorque() end

--- Gets the motor speed.
---@return number s # The motor speed, radians per second.
function love.RevoluteJoint.getMotorSpeed() end

--- Get the current motor force.
---@return number f # The current motor force, in Nm.
function love.RevoluteJoint.getMotorTorque() end

--- Gets the reference angle.
---@return number angle # The reference angle in radians.
function love.RevoluteJoint.getReferenceAngle() end

--- Gets the upper limit.
---@return number upper # The upper limit, in radians.
function love.RevoluteJoint.getUpperLimit() end

--- Checks whether limits are enabled.
---@return boolean enabled # True if enabled, false otherwise.
function love.RevoluteJoint.hasLimitsEnabled() end

--- Checks whether the motor is enabled.
---@return boolean enabled # True if enabled, false if disabled.
function love.RevoluteJoint.isMotorEnabled() end

--- Sets the limits.
---@param lower number
---@param upper number
function love.RevoluteJoint.setLimits(lower, upper) end

--- Enables/disables the joint limit.
---@param enable boolean
function love.RevoluteJoint.setLimitsEnabled(enable) end

--- Sets the lower limit.
---@param lower number
function love.RevoluteJoint.setLowerLimit(lower) end

--- Set the maximum motor force.
---@param f number
function love.RevoluteJoint.setMaxMotorTorque(f) end

--- Enables/disables the joint motor.
---@param enable boolean
function love.RevoluteJoint.setMotorEnabled(enable) end

--- Sets the motor speed.
---@param s number
function love.RevoluteJoint.setMotorSpeed(s) end

--- Sets the upper limit.
---@param upper number
function love.RevoluteJoint.setUpperLimit(upper) end
