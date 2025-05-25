---@meta

-- Module: love.MouseJoint
love.MouseJoint = {}
--- Returns the damping ratio.
---@return number ratio # The new damping ratio.
function love.MouseJoint.getDampingRatio() end

--- Returns the frequency.
---@return number freq # The frequency in hertz.
function love.MouseJoint.getFrequency() end

--- Gets the highest allowed force.
---@return number f # The max allowed force.
function love.MouseJoint.getMaxForce() end

--- Gets the target point.
---@return number x # The x-component of the target.
---@return number y # The x-component of the target.
function love.MouseJoint.getTarget() end

--- Sets a new damping ratio.
---@param ratio number
function love.MouseJoint.setDampingRatio(ratio) end

--- Sets a new frequency.
---@param freq number
function love.MouseJoint.setFrequency(freq) end

--- Sets the highest allowed force.
---@param f number
function love.MouseJoint.setMaxForce(f) end

--- Sets the target point.
---@param x number
---@param y number
function love.MouseJoint.setTarget(x, y) end
