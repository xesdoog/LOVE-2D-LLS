---@meta

-- Module: love.Contact
love.Contact = {}
--- Gets the child indices of the shapes of the two colliding fixtures. For ChainShapes, an index of 1 is the first edge in the chain. Used together with Fixture:rayCast or ChainShape:getChildEdge.
---@return number indexA # The child index of the first fixture's shape.
---@return number indexB # The child index of the second fixture's shape.
function love.Contact.getChildren() end

--- Gets the two Fixtures that hold the shapes that are in contact.
---@return Fixture fixtureA # The first Fixture.
---@return Fixture fixtureB # The second Fixture.
function love.Contact.getFixtures() end

--- Get the friction between two shapes that are in contact.
---@return number friction # The friction of the contact.
function love.Contact.getFriction() end

--- Get the normal vector between two shapes that are in contact. This function returns the coordinates of a unit vector that points from the first shape to the second.
---@return number nx # The x component of the normal vector.
---@return number ny # The y component of the normal vector.
function love.Contact.getNormal() end

--- Returns the contact points of the two colliding fixtures. There can be one or two points.
---@return number x1 # The x coordinate of the first contact point.
---@return number y1 # The y coordinate of the first contact point.
---@return number x2 # The x coordinate of the second contact point.
---@return number y2 # The y coordinate of the second contact point.
function love.Contact.getPositions() end

--- Get the restitution between two shapes that are in contact.
---@return number restitution # The restitution between the two shapes.
function love.Contact.getRestitution() end

--- Returns whether the contact is enabled. The collision will be ignored if a contact gets disabled in the preSolve callback.
---@return boolean enabled # True if enabled, false otherwise.
function love.Contact.isEnabled() end

--- Returns whether the two colliding fixtures are touching each other.
---@return boolean touching # True if they touch or false if not.
function love.Contact.isTouching() end

--- Resets the contact friction to the mixture value of both fixtures.
function love.Contact.resetFriction() end

--- Resets the contact restitution to the mixture value of both fixtures.
function love.Contact.resetRestitution() end

--- Enables or disables the contact.
---@param enabled boolean
function love.Contact.setEnabled(enabled) end

--- Sets the contact friction.
---@param friction number
function love.Contact.setFriction(friction) end

--- Sets the contact restitution.
---@param restitution number
function love.Contact.setRestitution(restitution) end
