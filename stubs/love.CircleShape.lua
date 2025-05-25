---@meta

-- Module: love.CircleShape
love.CircleShape = {}
--- Gets the center point of the circle shape.
---@return number x # The x-component of the center point of the circle.
---@return number y # The y-component of the center point of the circle.
function love.CircleShape.getPoint() end

--- Gets the radius of the circle shape.
---@return number radius # The radius of the circle
function love.CircleShape.getRadius() end

--- Sets the location of the center of the circle shape.
---@param x number
---@param y number
function love.CircleShape.setPoint(x, y) end

--- Sets the radius of the circle.
---@param radius number
function love.CircleShape.setRadius(radius) end
