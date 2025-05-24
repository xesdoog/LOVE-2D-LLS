-- Module: love.Joint
love.Joint = {}
--- Explicitly destroys the Joint. An error will occur if you attempt to use the object after calling this function. In 0.7.2, when you don't have time to wait for garbage collection, this function may be used to free the object immediately.
function love.destroy() end

--- Get the anchor points of the joint.
---@return number x1 # The x-component of the anchor on Body 1.
---@return number y1 # The y-component of the anchor on Body 1.
---@return number x2 # The x-component of the anchor on Body 2.
---@return number y2 # The y-component of the anchor on Body 2.
function love.getAnchors() end

--- Gets the bodies that the Joint is attached to.
---@return Body bodyA # The first Body.
---@return Body bodyB # The second Body.
function love.getBodies() end

--- Gets whether the connected Bodies collide.
---@return boolean c # True if they collide, false otherwise.
function love.getCollideConnected() end

--- Returns the reaction force in newtons on the second body
---@param x number
---@return number x # The x-component of the force.
---@return number y # The y-component of the force.
function love.getReactionForce(x) end

--- Returns the reaction torque on the second body.
---@param invdt number
---@return number torque # The reaction torque on the second body.
function love.getReactionTorque(invdt) end

--- Gets a string representing the type.
---@return JointType type # A string with the name of the Joint type.
function love.getType() end

--- Returns the Lua value associated with this Joint.
---@return any value # The Lua value associated with the Joint.
function love.getUserData() end

--- Gets whether the Joint is destroyed. Destroyed joints cannot be used.
---@return boolean destroyed # Whether the Joint is destroyed.
function love.isDestroyed() end

--- Associates a Lua value with the Joint. To delete the reference, explicitly pass nil.
---@param value any
function love.setUserData(value) end
