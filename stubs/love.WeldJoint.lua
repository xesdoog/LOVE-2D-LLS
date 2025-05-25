---@meta

-- Module: love.WeldJoint
love.WeldJoint = {}
--- Returns the damping ratio of the joint.
---@return number ratio # The damping ratio.
function love.WeldJoint.getDampingRatio() end

--- Returns the frequency.
---@return number freq # The frequency in hertz.
function love.WeldJoint.getFrequency() end

--- Gets the reference angle.
---@return number angle # The reference angle in radians.
function love.WeldJoint.getReferenceAngle() end

--- Sets a new damping ratio.
---@param ratio number
function love.WeldJoint.setDampingRatio(ratio) end

--- Sets a new frequency.
---@param freq number
function love.WeldJoint.setFrequency(freq) end
