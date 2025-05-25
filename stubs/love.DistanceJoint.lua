---@meta

-- Module: love.DistanceJoint
love.DistanceJoint = {}
--- Gets the damping ratio.
---@return number ratio # The damping ratio.
function love.DistanceJoint.getDampingRatio() end

--- Gets the response speed.
---@return number Hz # The response speed.
function love.DistanceJoint.getFrequency() end

--- Gets the equilibrium distance between the two Bodies.
---@return number l # The length between the two Bodies.
function love.DistanceJoint.getLength() end

--- Sets the damping ratio.
---@param ratio number
function love.DistanceJoint.setDampingRatio(ratio) end

--- Sets the response speed.
---@param Hz number
function love.DistanceJoint.setFrequency(Hz) end

--- Sets the equilibrium distance between the two Bodies.
---@param l number
function love.DistanceJoint.setLength(l) end
