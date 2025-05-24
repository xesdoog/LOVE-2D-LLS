-- Module: love.physics
love.physics = {}
--- Returns the two closest points between two fixtures and their distance.
---@param fixture1 Fixture
---@param fixture2 Fixture
---@return number distance # The distance of the two points.
---@return number x1 # The x-coordinate of the first point.
---@return number y1 # The y-coordinate of the first point.
---@return number x2 # The x-coordinate of the second point.
---@return number y2 # The y-coordinate of the second point.
function love.getDistance(fixture1, fixture2) end

--- Returns the meter scale factor. All coordinates in the physics module are divided by this number, creating a convenient way to draw the objects directly to the screen without the need for graphics transformations. It is recommended to create shapes no larger than 10 times the scale. This is important because Box2D is tuned to work well with shape sizes from 0.1 to 10 meters.
---@return number scale # The scale factor as an integer.
function love.getMeter() end

--- Creates a new body. There are three types of bodies. * Static bodies do not move, have a infinite mass, and can be used for level boundaries. * Dynamic bodies are the main actors in the simulation, they collide with everything. * Kinematic bodies do not react to forces and only collide with dynamic bodies. The mass of the body gets calculated when a Fixture is attached or removed, but can be changed at any time with Body:setMass or Body:resetMassData.
---@param world World
---@param x? number
---@param y? number
---@param type? BodyType
---@return Body body # A new body.
function love.newBody(world, x, y, type) end

--- Creates a new ChainShape.
---@param loop boolean
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param ... number
---@return ChainShape shape # The new shape.
function love.newChainShape(loop, x1, y1, x2, y2, ...) end

--- Creates a new CircleShape.
---@param radius number
---@return CircleShape shape # The new shape.
function love.newCircleShape(radius) end

--- Creates a DistanceJoint between two bodies. This joint constrains the distance between two points on two bodies to be constant. These two points are specified in world coordinates and the two bodies are assumed to be in place when this joint is created. The first anchor point is connected to the first body and the second to the second body, and the points define the length of the distance joint.
---@param body1 Body
---@param body2 Body
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param collideConnected? boolean
---@return DistanceJoint joint # The new distance joint.
function love.newDistanceJoint(body1, body2, x1, y1, x2, y2, collideConnected) end

--- Creates a new EdgeShape.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return EdgeShape shape # The new shape.
function love.newEdgeShape(x1, y1, x2, y2) end

--- Creates and attaches a Fixture to a body. Note that the Shape object is copied rather than kept as a reference when the Fixture is created. To get the Shape object that the Fixture owns, use Fixture:getShape.
---@param body Body
---@param shape Shape
---@param density? number
---@return Fixture fixture # The new fixture.
function love.newFixture(body, shape, density) end

--- Create a friction joint between two bodies. A FrictionJoint applies friction to a body.
---@param body1 Body
---@param body2 Body
---@param x number
---@param y number
---@param collideConnected? boolean
---@return FrictionJoint joint # The new FrictionJoint.
function love.newFrictionJoint(body1, body2, x, y, collideConnected) end

--- Create a GearJoint connecting two Joints. The gear joint connects two joints that must be either prismatic or revolute joints. Using this joint requires that the joints it uses connect their respective bodies to the ground and have the ground as the first body. When destroying the bodies and joints you must make sure you destroy the gear joint before the other joints. The gear joint has a ratio the determines how the angular or distance values of the connected joints relate to each other. The formula coordinate1 + ratio * coordinate2 always has a constant value that is set when the gear joint is created.
---@param joint1 Joint
---@param joint2 Joint
---@param ratio? number
---@param collideConnected? boolean
---@return GearJoint joint # The new gear joint.
function love.newGearJoint(joint1, joint2, ratio, collideConnected) end

--- Creates a joint between two bodies which controls the relative motion between them. Position and rotation offsets can be specified once the MotorJoint has been created, as well as the maximum motor force and torque that will be be applied to reach the target offsets.
---@param body1 Body
---@param body2 Body
---@param correctionFactor? number
---@return MotorJoint joint # The new MotorJoint.
function love.newMotorJoint(body1, body2, correctionFactor) end

--- Create a joint between a body and the mouse. This joint actually connects the body to a fixed point in the world. To make it follow the mouse, the fixed point must be updated every timestep (example below). The advantage of using a MouseJoint instead of just changing a body position directly is that collisions and reactions to other joints are handled by the physics engine. 
---@param body Body
---@param x number
---@param y number
---@return MouseJoint joint # The new mouse joint.
function love.newMouseJoint(body, x, y) end

--- Creates a new PolygonShape. This shape can have 8 vertices at most, and must form a convex shape.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param x3 number
---@param y3 number
---@param ... number
---@return PolygonShape shape # A new PolygonShape.
function love.newPolygonShape(x1, y1, x2, y2, x3, y3, ...) end

--- Creates a PrismaticJoint between two bodies. A prismatic joint constrains two bodies to move relatively to each other on a specified axis. It does not allow for relative rotation. Its definition and operation are similar to a revolute joint, but with translation and force substituted for angle and torque.
---@param body1 Body
---@param body2 Body
---@param x number
---@param y number
---@param ax number
---@param ay number
---@param collideConnected? boolean
---@return PrismaticJoint joint # The new prismatic joint.
function love.newPrismaticJoint(body1, body2, x, y, ax, ay, collideConnected) end

--- Creates a PulleyJoint to join two bodies to each other and the ground. The pulley joint simulates a pulley with an optional block and tackle. If the ratio parameter has a value different from one, then the simulated rope extends faster on one side than the other. In a pulley joint the total length of the simulated rope is the constant length1 + ratio * length2, which is set when the pulley joint is created. Pulley joints can behave unpredictably if one side is fully extended. It is recommended that the method setMaxLengths  be used to constrain the maximum lengths each side can attain.
---@param body1 Body
---@param body2 Body
---@param gx1 number
---@param gy1 number
---@param gx2 number
---@param gy2 number
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param ratio? number
---@param collideConnected? boolean
---@return PulleyJoint joint # The new pulley joint.
function love.newPulleyJoint(body1, body2, gx1, gy1, gx2, gy2, x1, y1, x2, y2, ratio, collideConnected) end

--- Shorthand for creating rectangular PolygonShapes. By default, the local origin is located at the '''center''' of the rectangle as opposed to the top left for graphics.
---@param width number
---@param height number
---@return PolygonShape shape # A new PolygonShape.
function love.newRectangleShape(width, height) end

--- Creates a pivot joint between two bodies. This joint connects two bodies to a point around which they can pivot.
---@param body1 Body
---@param body2 Body
---@param x number
---@param y number
---@param collideConnected? boolean
---@return RevoluteJoint joint # The new revolute joint.
function love.newRevoluteJoint(body1, body2, x, y, collideConnected) end

--- Creates a joint between two bodies. Its only function is enforcing a max distance between these bodies.
---@param body1 Body
---@param body2 Body
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param maxLength number
---@param collideConnected? boolean
---@return RopeJoint joint # The new RopeJoint.
function love.newRopeJoint(body1, body2, x1, y1, x2, y2, maxLength, collideConnected) end

--- Creates a constraint joint between two bodies. A WeldJoint essentially glues two bodies together. The constraint is a bit soft, however, due to Box2D's iterative solver.
---@param body1 Body
---@param body2 Body
---@param x number
---@param y number
---@param collideConnected? boolean
---@return WeldJoint joint # The new WeldJoint.
function love.newWeldJoint(body1, body2, x, y, collideConnected) end

--- Creates a wheel joint.
---@param body1 Body
---@param body2 Body
---@param x number
---@param y number
---@param ax number
---@param ay number
---@param collideConnected? boolean
---@return WheelJoint joint # The new WheelJoint.
function love.newWheelJoint(body1, body2, x, y, ax, ay, collideConnected) end

--- Creates a new World.
---@param xg? number
---@param yg? number
---@param sleep? boolean
---@return World world # A brave new World.
function love.newWorld(xg, yg, sleep) end

--- Sets the pixels to meter scale factor. All coordinates in the physics module are divided by this number and converted to meters, and it creates a convenient way to draw the objects directly to the screen without the need for graphics transformations. It is recommended to create shapes no larger than 10 times the scale. This is important because Box2D is tuned to work well with shape sizes from 0.1 to 10 meters. The default meter scale is 30.
---@param scale number
function love.setMeter(scale) end
