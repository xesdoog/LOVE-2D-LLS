-- Module: love.Shape
love.Shape = {}
--- Returns the points of the bounding box for the transformed shape.
---@param tx number
---@param ty number
---@param tr number
---@param childIndex? number
---@return number topLeftX # The x position of the top-left point.
---@return number topLeftY # The y position of the top-left point.
---@return number bottomRightX # The x position of the bottom-right point.
---@return number bottomRightY # The y position of the bottom-right point.
function love.computeAABB(tx, ty, tr, childIndex) end

--- Computes the mass properties for the shape with the specified density.
---@param density number
---@return number x # The x postition of the center of mass.
---@return number y # The y postition of the center of mass.
---@return number mass # The mass of the shape.
---@return number inertia # The rotational inertia.
function love.computeMass(density) end

--- Returns the number of children the shape has.
---@return number count # The number of children.
function love.getChildCount() end

--- Gets the radius of the shape.
---@return number radius # The radius of the shape.
function love.getRadius() end

--- Gets a string representing the Shape. This function can be useful for conditional debug drawing.
---@return ShapeType type # The type of the Shape.
function love.getType() end

--- Casts a ray against the shape and returns the surface normal vector and the line position where the ray hit. If the ray missed the shape, nil will be returned. The Shape can be transformed to get it into the desired position. The ray starts on the first point of the input line and goes towards the second point of the line. The fourth argument is the maximum distance the ray is going to travel as a scale factor of the input line length. The childIndex parameter is used to specify which child of a parent shape, such as a ChainShape, will be ray casted. For ChainShapes, the index of 1 is the first edge on the chain. Ray casting a parent shape will only test the child specified so if you want to test every shape of the parent, you must loop through all of its children. The world position of the impact can be calculated by multiplying the line vector with the third return value and adding it to the line starting point. hitx, hity = x1 + (x2 - x1) * fraction, y1 + (y2 - y1) * fraction
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param maxFraction number
---@param tx number
---@param ty number
---@param tr number
---@param childIndex? number
---@return number xn # The x component of the normal vector of the edge where the ray hit the shape.
---@return number yn # The y component of the normal vector of the edge where the ray hit the shape.
---@return number fraction # The position on the input line where the intersection happened as a factor of the line length.
function love.rayCast(x1, y1, x2, y2, maxFraction, tx, ty, tr, childIndex) end

--- This is particularly useful for mouse interaction with the shapes. By looping through all shapes and testing the mouse position with this function, we can find which shapes the mouse touches.
---@param tx number
---@param ty number
---@param tr number
---@param x number
---@param y number
---@return boolean hit # True if inside, false if outside
function love.testPoint(tx, ty, tr, x, y) end
