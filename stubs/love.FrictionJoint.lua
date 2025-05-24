-- Module: love.FrictionJoint
love.FrictionJoint = {}
--- Gets the maximum friction force in Newtons.
---@return number force # Maximum force in Newtons.
function love.getMaxForce() end

--- Gets the maximum friction torque in Newton-meters.
---@return number torque # Maximum torque in Newton-meters.
function love.getMaxTorque() end

--- Sets the maximum friction force in Newtons.
---@param maxForce number
function love.setMaxForce(maxForce) end

--- Sets the maximum friction torque in Newton-meters.
---@param torque number
function love.setMaxTorque(torque) end
