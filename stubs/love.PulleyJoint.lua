---@meta

-- Module: love.PulleyJoint
love.PulleyJoint = {}
--- Get the total length of the rope.
---@return number length # The length of the rope in the joint.
function love.PulleyJoint.getConstant() end

--- Get the ground anchor positions in world coordinates.
---@return number a1x # The x coordinate of the first anchor.
---@return number a1y # The y coordinate of the first anchor.
---@return number a2x # The x coordinate of the second anchor.
---@return number a2y # The y coordinate of the second anchor.
function love.PulleyJoint.getGroundAnchors() end

--- Get the current length of the rope segment attached to the first body.
---@return number length # The length of the rope segment.
function love.PulleyJoint.getLengthA() end

--- Get the current length of the rope segment attached to the second body.
---@return number length # The length of the rope segment.
function love.PulleyJoint.getLengthB() end

--- Get the maximum lengths of the rope segments.
---@return number len1 # The maximum length of the first rope segment.
---@return number len2 # The maximum length of the second rope segment.
function love.PulleyJoint.getMaxLengths() end

--- Get the pulley ratio.
---@return number ratio # The pulley ratio of the joint.
function love.PulleyJoint.getRatio() end

--- Set the total length of the rope. Setting a new length for the rope updates the maximum length values of the joint.
---@param length number
function love.PulleyJoint.setConstant(length) end

--- Set the maximum lengths of the rope segments. The physics module also imposes maximum values for the rope segments. If the parameters exceed these values, the maximum values are set instead of the requested values.
---@param max1 number
---@param max2 number
function love.PulleyJoint.setMaxLengths(max1, max2) end

--- Set the pulley ratio.
---@param ratio number
function love.PulleyJoint.setRatio(ratio) end
