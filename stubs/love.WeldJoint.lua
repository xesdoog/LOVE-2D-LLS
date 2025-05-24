-- Module: love.WeldJoint
love.WeldJoint = {}
--- Returns the damping ratio of the joint.
---@return number ratio # The damping ratio.
function love.getDampingRatio() end

--- Returns the frequency.
---@return number freq # The frequency in hertz.
function love.getFrequency() end

--- Gets the reference angle.
---@return number angle # The reference angle in radians.
function love.getReferenceAngle() end

--- Sets a new damping ratio.
---@param ratio number
function love.setDampingRatio(ratio) end

--- Sets a new frequency.
---@param freq number
function love.setFrequency(freq) end
