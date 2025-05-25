---@meta

-- Module: love.GearJoint
love.GearJoint = {}
--- Get the Joints connected by this GearJoint.
---@return Joint joint1 # The first connected Joint.
---@return Joint joint2 # The second connected Joint.
function love.GearJoint.getJoints() end

--- Get the ratio of a gear joint.
---@return number ratio # The ratio of the joint.
function love.GearJoint.getRatio() end

--- Set the ratio of a gear joint.
---@param ratio number
function love.GearJoint.setRatio(ratio) end
