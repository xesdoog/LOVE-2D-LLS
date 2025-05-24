-- Module: love.DistanceJoint
love.DistanceJoint = {}
--- Gets the damping ratio.
---@return number ratio # The damping ratio.
function love.getDampingRatio() end

--- Gets the response speed.
---@return number Hz # The response speed.
function love.getFrequency() end

--- Gets the equilibrium distance between the two Bodies.
---@return number l # The length between the two Bodies.
function love.getLength() end

--- Sets the damping ratio.
---@param ratio number
function love.setDampingRatio(ratio) end

--- Sets the response speed.
---@param Hz number
function love.setFrequency(Hz) end

--- Sets the equilibrium distance between the two Bodies.
---@param l number
function love.setLength(l) end
