---@meta

-- Module: love.PolygonShape
love.PolygonShape = {}
--- Get the local coordinates of the polygon's vertices. This function has a variable number of return values. It can be used in a nested fashion with love.graphics.polygon.
---@return number x1 # The x-component of the first vertex.
---@return number y1 # The y-component of the first vertex.
---@return number x2 # The x-component of the second vertex.
---@return number y2 # The y-component of the second vertex.
function love.PolygonShape.getPoints() end
