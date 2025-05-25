---@meta

-- Module: love.EdgeShape
love.EdgeShape = {}
--- Gets the vertex that establishes a connection to the next shape. Setting next and previous EdgeShape vertices can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---@return number x # The x-component of the vertex, or nil if EdgeShape:setNextVertex hasn't been called.
---@return number y # The y-component of the vertex, or nil if EdgeShape:setNextVertex hasn't been called.
function love.EdgeShape.getNextVertex() end

--- Returns the local coordinates of the edge points.
---@return number x1 # The x-component of the first vertex.
---@return number y1 # The y-component of the first vertex.
---@return number x2 # The x-component of the second vertex.
---@return number y2 # The y-component of the second vertex.
function love.EdgeShape.getPoints() end

--- Gets the vertex that establishes a connection to the previous shape. Setting next and previous EdgeShape vertices can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---@return number x # The x-component of the vertex, or nil if EdgeShape:setPreviousVertex hasn't been called.
---@return number y # The y-component of the vertex, or nil if EdgeShape:setPreviousVertex hasn't been called.
function love.EdgeShape.getPreviousVertex() end

--- Sets a vertex that establishes a connection to the next shape. This can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---@param x number
---@param y number
function love.EdgeShape.setNextVertex(x, y) end

--- Sets a vertex that establishes a connection to the previous shape. This can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---@param x number
---@param y number
function love.EdgeShape.setPreviousVertex(x, y) end
