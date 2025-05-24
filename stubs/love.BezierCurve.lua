-- Module: love.BezierCurve
love.BezierCurve = {}
--- Evaluate Bézier curve at parameter t. The parameter must be between 0 and 1 (inclusive). This function can be used to move objects along paths or tween parameters. However it should not be used to render the curve, see BezierCurve:render for that purpose.
---@param t number
---@return number x # x coordinate of the curve at parameter t.
---@return number y # y coordinate of the curve at parameter t.
function love.evaluate(t) end

--- Get coordinates of the i-th control point. Indices start with 1.
---@param i number
---@return number x # Position of the control point along the x axis.
---@return number y # Position of the control point along the y axis.
function love.getControlPoint(i) end

--- Get the number of control points in the Bézier curve.
---@return number count # The number of control points.
function love.getControlPointCount() end

--- Get degree of the Bézier curve. The degree is equal to number-of-control-points - 1.
---@return number degree # Degree of the Bézier curve.
function love.getDegree() end

--- Get the derivative of the Bézier curve. This function can be used to rotate sprites moving along a curve in the direction of the movement and compute the direction perpendicular to the curve at some parameter t.
---@return BezierCurve derivative # The derivative curve.
function love.getDerivative() end

--- Gets a BezierCurve that corresponds to the specified segment of this BezierCurve.
---@param startpoint number
---@param endpoint number
---@return BezierCurve curve # A BezierCurve that corresponds to the specified segment.
function love.getSegment(startpoint, endpoint) end

--- Insert control point as the new i-th control point. Existing control points from i onwards are pushed back by 1. Indices start with 1. Negative indices wrap around: -1 is the last control point, -2 the one before the last, etc.
---@param x number
---@param y number
---@param i? number
function love.insertControlPoint(x, y, i) end

--- Removes the specified control point.
---@param index number
function love.removeControlPoint(index) end

--- Get a list of coordinates to be used with love.graphics.line. This function samples the Bézier curve using recursive subdivision. You can control the recursion depth using the depth parameter. If you are just interested to know the position on the curve given a parameter, use BezierCurve:evaluate.
---@param depth? number
---@return table<number> coordinates # List of x,y-coordinate pairs of points on the curve.
function love.render(depth) end

--- Get a list of coordinates on a specific part of the curve, to be used with love.graphics.line. This function samples the Bézier curve using recursive subdivision. You can control the recursion depth using the depth parameter. If you are just need to know the position on the curve given a parameter, use BezierCurve:evaluate.
---@param startpoint number
---@param endpoint number
---@param depth? number
---@return table<number> coordinates # List of x,y-coordinate pairs of points on the specified part of the curve.
function love.renderSegment(startpoint, endpoint, depth) end

--- Rotate the Bézier curve by an angle.
---@param angle number
---@param ox? number
---@param oy? number
function love.rotate(angle, ox, oy) end

--- Scale the Bézier curve by a factor.
---@param s number
---@param ox? number
---@param oy? number
function love.scale(s, ox, oy) end

--- Set coordinates of the i-th control point. Indices start with 1.
---@param i number
---@param x number
---@param y number
function love.setControlPoint(i, x, y) end

--- Move the Bézier curve by an offset.
---@param dx number
---@param dy number
function love.translate(dx, dy) end
