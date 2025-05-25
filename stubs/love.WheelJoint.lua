---@meta

-- Module: love.WheelJoint
love.WheelJoint = {}
--- Gets the world-space axis vector of the Wheel Joint.
---@return number x # The x-axis coordinate of the world-space axis vector.
---@return number y # The y-axis coordinate of the world-space axis vector.
function love.WheelJoint.getAxis() end

--- Returns the current joint translation speed.
---@return number speed # The translation speed of the joint in meters per second.
function love.WheelJoint.getJointSpeed() end

--- Returns the current joint translation.
---@return number position # The translation of the joint in meters.
function love.WheelJoint.getJointTranslation() end

--- Returns the maximum motor torque.
---@return number maxTorque # The maximum torque of the joint motor in newton meters.
function love.WheelJoint.getMaxMotorTorque() end

--- Returns the speed of the motor.
---@return number speed # The speed of the joint motor in radians per second.
function love.WheelJoint.getMotorSpeed() end

--- Returns the current torque on the motor.
---@param invdt number
---@return number torque # The torque on the motor in newton meters.
function love.WheelJoint.getMotorTorque(invdt) end

--- Returns the damping ratio.
---@return number ratio # The damping ratio.
function love.WheelJoint.getSpringDampingRatio() end

--- Returns the spring frequency.
---@return number freq # The frequency in hertz.
function love.WheelJoint.getSpringFrequency() end

--- Checks if the joint motor is running.
---@return boolean on # The status of the joint motor.
function love.WheelJoint.isMotorEnabled() end

--- Sets a new maximum motor torque.
---@param maxTorque number
function love.WheelJoint.setMaxMotorTorque(maxTorque) end

--- Starts and stops the joint motor.
---@param enable boolean
function love.WheelJoint.setMotorEnabled(enable) end

--- Sets a new speed for the motor.
---@param speed number
function love.WheelJoint.setMotorSpeed(speed) end

--- Sets a new damping ratio.
---@param ratio number
function love.WheelJoint.setSpringDampingRatio(ratio) end

--- Sets a new spring frequency.
---@param freq number
function love.WheelJoint.setSpringFrequency(freq) end
