---@meta

-- Module: love.FrictionJoint
love.FrictionJoint = {}
--- Gets the maximum friction force in Newtons.
---@return number force # Maximum force in Newtons.
function love.FrictionJoint.getMaxForce() end

--- Gets the maximum friction torque in Newton-meters.
---@return number torque # Maximum torque in Newton-meters.
function love.FrictionJoint.getMaxTorque() end

--- Sets the maximum friction force in Newtons.
---@param maxForce number
function love.FrictionJoint.setMaxForce(maxForce) end

--- Sets the maximum friction torque in Newton-meters.
---@param torque number
function love.FrictionJoint.setMaxTorque(torque) end
