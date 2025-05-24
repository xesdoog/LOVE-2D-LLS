-- Module: love.Transform
love.Transform = {}
--- Applies the given other Transform object to this one. This effectively multiplies this Transform's internal transformation matrix with the other Transform's (i.e. self * other), and stores the result in this object.
---@param other Transform
---@return Transform transform # The Transform object the method was called on. Allows easily chaining Transform methods.
function love.apply(other) end

--- Creates a new copy of this Transform.
---@return Transform clone # The copy of this Transform.
function love.clone() end

--- Gets the internal 4x4 transformation matrix stored by this Transform. The matrix is returned in row-major order.
---@return number e1_1 # The first column of the first row of the matrix.
---@return number e1_2 # The second column of the first row of the matrix.
---@return number e1_3 # The third column of the first row of the matrix.
---@return number e1_4 # The fourth column of the first row of the matrix.
---@return number e2_1 # The first column of the second row of the matrix.
---@return number e2_2 # The second column of the second row of the matrix.
---@return number e2_3 # The third column of the second row of the matrix.
---@return number e2_4 # The fourth column of the second row of the matrix.
---@return number e3_1 # The first column of the third row of the matrix.
---@return number e3_2 # The second column of the third row of the matrix.
---@return number e3_3 # The third column of the third row of the matrix.
---@return number e3_4 # The fourth column of the third row of the matrix.
---@return number e4_1 # The first column of the fourth row of the matrix.
---@return number e4_2 # The second column of the fourth row of the matrix.
---@return number e4_3 # The third column of the fourth row of the matrix.
---@return number e4_4 # The fourth column of the fourth row of the matrix.
function love.getMatrix() end

--- Creates a new Transform containing the inverse of this Transform.
---@return Transform inverse # A new Transform object representing the inverse of this Transform's matrix.
function love.inverse() end

--- Applies the reverse of the Transform object's transformation to the given 2D position. This effectively converts the given position from the local coordinate space of the Transform into global coordinates. One use of this method can be to convert a screen-space mouse position into global world coordinates, if the given Transform has transformations applied that are used for a camera system in-game.
---@param localX number
---@param localY number
---@return number globalX # The x component of the position in global coordinates.
---@return number globalY # The y component of the position in global coordinates.
function love.inverseTransformPoint(localX, localY) end

--- Checks whether the Transform is an affine transformation.
---@return boolean affine # true if the transform object is an affine transformation, false otherwise.
function love.isAffine2DTransform() end

--- Resets the Transform to an identity state. All previously applied transformations are erased.
---@return Transform transform # The Transform object the method was called on. Allows easily chaining Transform methods.
function love.reset() end

--- Applies a rotation to the Transform's coordinate system. This method does not reset any previously applied transformations.
---@param angle number
---@return Transform transform # The Transform object the method was called on. Allows easily chaining Transform methods.
function love.rotate(angle) end

--- Scales the Transform's coordinate system. This method does not reset any previously applied transformations.
---@param sx number
---@param sy? number
---@return Transform transform # The Transform object the method was called on. Allows easily chaining Transform methods.
function love.scale(sx, sy) end

--- Directly sets the Transform's internal 4x4 transformation matrix.
---@param e1_1 number
---@param e1_2 number
---@param e1_3 number
---@param e1_4 number
---@param e2_1 number
---@param e2_2 number
---@param e2_3 number
---@param e2_4 number
---@param e3_1 number
---@param e3_2 number
---@param e3_3 number
---@param e3_4 number
---@param e4_1 number
---@param e4_2 number
---@param e4_3 number
---@param e4_4 number
---@return Transform transform # The Transform object the method was called on. Allows easily chaining Transform methods.
function love.setMatrix(e1_1, e1_2, e1_3, e1_4, e2_1, e2_2, e2_3, e2_4, e3_1, e3_2, e3_3, e3_4, e4_1, e4_2, e4_3, e4_4) end

--- Resets the Transform to the specified transformation parameters.
---@param x number
---@param y number
---@param angle? number
---@param sx? number
---@param sy? number
---@param ox? number
---@param oy? number
---@param kx? number
---@param ky? number
---@return Transform transform # The Transform object the method was called on. Allows easily chaining Transform methods.
function love.setTransformation(x, y, angle, sx, sy, ox, oy, kx, ky) end

--- Applies a shear factor (skew) to the Transform's coordinate system. This method does not reset any previously applied transformations.
---@param kx number
---@param ky number
---@return Transform transform # The Transform object the method was called on. Allows easily chaining Transform methods.
function love.shear(kx, ky) end

--- Applies the Transform object's transformation to the given 2D position. This effectively converts the given position from global coordinates into the local coordinate space of the Transform.
---@param globalX number
---@param globalY number
---@return number localX # The x component of the position with the transform applied.
---@return number localY # The y component of the position with the transform applied.
function love.transformPoint(globalX, globalY) end

--- Applies a translation to the Transform's coordinate system. This method does not reset any previously applied transformations.
---@param dx number
---@param dy number
---@return Transform transform # The Transform object the method was called on. Allows easily chaining Transform methods.
function love.translate(dx, dy) end
