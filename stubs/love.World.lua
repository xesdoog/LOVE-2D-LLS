-- Module: love.World
love.World = {}
--- Destroys the world, taking all bodies, joints, fixtures and their shapes with it. An error will occur if you attempt to use any of the destroyed objects after calling this function.
function love.destroy() end

--- Returns a table with all bodies.
---@return table<Body> bodies # A sequence with all bodies.
function love.getBodies() end

--- Returns the number of bodies in the world.
---@return number n # The number of bodies in the world.
function love.getBodyCount() end

--- Returns functions for the callbacks during the world update.
---@return function beginContact # Gets called when two fixtures begin to overlap.
---@return function endContact # Gets called when two fixtures cease to overlap.
---@return function preSolve # Gets called before a collision gets resolved.
---@return function postSolve # Gets called after the collision has been resolved.
function love.getCallbacks() end

--- Returns the number of contacts in the world.
---@return number n # The number of contacts in the world.
function love.getContactCount() end

--- Returns the function for collision filtering.
---@return function contactFilter # The function that handles the contact filtering.
function love.getContactFilter() end

--- Returns a table with all Contacts.
---@return table<Contact> contacts # A sequence with all Contacts.
function love.getContacts() end

--- Get the gravity of the world.
---@return number x # The x component of gravity.
---@return number y # The y component of gravity.
function love.getGravity() end

--- Returns the number of joints in the world.
---@return number n # The number of joints in the world.
function love.getJointCount() end

--- Returns a table with all joints.
---@return table<Joint> joints # A sequence with all joints.
function love.getJoints() end

--- Gets whether the World is destroyed. Destroyed worlds cannot be used.
---@return boolean destroyed # Whether the World is destroyed.
function love.isDestroyed() end

--- Returns if the world is updating its state. This will return true inside the callbacks from World:setCallbacks.
---@return boolean locked # Will be true if the world is in the process of updating its state.
function love.isLocked() end

--- Gets the sleep behaviour of the world.
---@return boolean allow # True if bodies in the world are allowed to sleep, or false if not.
function love.isSleepingAllowed() end

--- Calls a function for each fixture inside the specified area by searching for any overlapping bounding box (Fixture:getBoundingBox).
---@param topLeftX number
---@param topLeftY number
---@param bottomRightX number
---@param bottomRightY number
---@param callback function
function love.queryBoundingBox(topLeftX, topLeftY, bottomRightX, bottomRightY, callback) end

--- Casts a ray and calls a function for each fixtures it intersects. 
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param callback function
function love.rayCast(x1, y1, x2, y2, callback) end

--- Sets functions for the collision callbacks during the world update. Four Lua functions can be given as arguments. The value nil removes a function. When called, each function will be passed three arguments. The first two arguments are the colliding fixtures and the third argument is the Contact between them. The postSolve callback additionally gets the normal and tangent impulse for each contact point. See notes. If you are interested to know when exactly each callback is called, consult a Box2d manual
---@param beginContact function
---@param endContact function
---@param preSolve? function
---@param postSolve? function
function love.setCallbacks(beginContact, endContact, preSolve, postSolve) end

--- Sets a function for collision filtering. If the group and category filtering doesn't generate a collision decision, this function gets called with the two fixtures as arguments. The function should return a boolean value where true means the fixtures will collide and false means they will pass through each other.
---@param filter function
function love.setContactFilter(filter) end

--- Set the gravity of the world.
---@param x number
---@param y number
function love.setGravity(x, y) end

--- Sets the sleep behaviour of the world.
---@param allow boolean
function love.setSleepingAllowed(allow) end

--- Translates the World's origin. Useful in large worlds where floating point precision issues become noticeable at far distances from the origin.
---@param x number
---@param y number
function love.translateOrigin(x, y) end

--- Update the state of the world.
---@param dt number
---@param velocityiterations? number
---@param positioniterations? number
function love.update(dt, velocityiterations, positioniterations) end
