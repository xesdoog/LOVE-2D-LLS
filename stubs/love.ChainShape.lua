-- Module: love.ChainShape
love.ChainShape = {}
--- Returns a child of the shape as an EdgeShape.
---@param index number
---@return EdgeShape shape # The child as an EdgeShape.
function love.getChildEdge(index) end

--- Gets the vertex that establishes a connection to the next shape. Setting next and previous ChainShape vertices can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---@return number x # The x-component of the vertex, or nil if ChainShape:setNextVertex hasn't been called.
---@return number y # The y-component of the vertex, or nil if ChainShape:setNextVertex hasn't been called.
function love.getNextVertex() end

--- Returns a point of the shape.
---@param index number
---@return number x # The x-coordinate of the point.
---@return number y # The y-coordinate of the point.
function love.getPoint(index) end

--- Returns all points of the shape.
---@return number x1 # The x-coordinate of the first point.
---@return number y1 # The y-coordinate of the first point.
---@return number x2 # The x-coordinate of the second point.
---@return number y2 # The y-coordinate of the second point.
function love.getPoints() end

--- Gets the vertex that establishes a connection to the previous shape. Setting next and previous ChainShape vertices can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---@return number x # The x-component of the vertex, or nil if ChainShape:setPreviousVertex hasn't been called.
---@return number y # The y-component of the vertex, or nil if ChainShape:setPreviousVertex hasn't been called.
function love.getPreviousVertex() end

--- Returns the number of vertices the shape has.
---@return number count # The number of vertices.
function love.getVertexCount() end

--- Sets a vertex that establishes a connection to the next shape. This can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---@param x number
---@param y number
function love.setNextVertex(x, y) end

--- Sets a vertex that establishes a connection to the previous shape. This can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---@param x number
---@param y number
function love.setPreviousVertex(x, y) end
