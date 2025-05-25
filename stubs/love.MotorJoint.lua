---@meta

-- Module: love.MotorJoint
love.MotorJoint = {}
--- Gets the target angular offset between the two Bodies the Joint is attached to.
---@return number angleoffset # The target angular offset in radians: the second body's angle minus the first body's angle.
function love.MotorJoint.getAngularOffset() end

--- Gets the target linear offset between the two Bodies the Joint is attached to.
---@return number x # The x component of the target linear offset, relative to the first Body.
---@return number y # The y component of the target linear offset, relative to the first Body.
function love.MotorJoint.getLinearOffset() end

--- Sets the target angluar offset between the two Bodies the Joint is attached to.
---@param angleoffset number
function love.MotorJoint.setAngularOffset(angleoffset) end

--- Sets the target linear offset between the two Bodies the Joint is attached to.
---@param x number
---@param y number
function love.MotorJoint.setLinearOffset(x, y) end
