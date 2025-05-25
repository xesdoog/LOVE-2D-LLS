---@meta

-- Module: love.Fixture
love.Fixture = {}
--- Destroys the fixture.
function love.Fixture.destroy() end

--- Returns the body to which the fixture is attached.
---@return Body body # The parent body.
function love.Fixture.getBody() end

--- Returns the points of the fixture bounding box. In case the fixture has multiple children a 1-based index can be specified. For example, a fixture will have multiple children with a chain shape.
---@param index? number
---@return number topLeftX # The x position of the top-left point.
---@return number topLeftY # The y position of the top-left point.
---@return number bottomRightX # The x position of the bottom-right point.
---@return number bottomRightY # The y position of the bottom-right point.
function love.Fixture.getBoundingBox(index) end

--- Returns the categories the fixture belongs to.
---@return number ... # The categories.
function love.Fixture.getCategory() end

--- Returns the density of the fixture.
---@return number density # The fixture density in kilograms per square meter.
function love.Fixture.getDensity() end

--- Returns the filter data of the fixture. Categories and masks are encoded as the bits of a 16-bit integer.
---@return number categories # The categories as an integer from 0 to 65535.
---@return number mask # The mask as an integer from 0 to 65535.
---@return number group # The group as an integer from -32768 to 32767.
function love.Fixture.getFilterData() end

--- Returns the friction of the fixture.
---@return number friction # The fixture friction.
function love.Fixture.getFriction() end

--- Returns the group the fixture belongs to. Fixtures with the same group will always collide if the group is positive or never collide if it's negative. The group zero means no group. The groups range from -32768 to 32767.
---@return number group # The group of the fixture.
function love.Fixture.getGroupIndex() end

--- Returns which categories this fixture should '''NOT''' collide with.
---@return number ... # The masks.
function love.Fixture.getMask() end

--- Returns the mass, its center and the rotational inertia.
---@return number x # The x position of the center of mass.
---@return number y # The y position of the center of mass.
---@return number mass # The mass of the fixture.
---@return number inertia # The rotational inertia.
function love.Fixture.getMassData() end

--- Returns the restitution of the fixture.
---@return number restitution # The fixture restitution.
function love.Fixture.getRestitution() end

--- Returns the shape of the fixture. This shape is a reference to the actual data used in the simulation. It's possible to change its values between timesteps.
---@return Shape shape # The fixture's shape.
function love.Fixture.getShape() end

--- Returns the Lua value associated with this fixture.
---@return any value # The Lua value associated with the fixture.
function love.Fixture.getUserData() end

--- Gets whether the Fixture is destroyed. Destroyed fixtures cannot be used.
---@return boolean destroyed # Whether the Fixture is destroyed.
function love.Fixture.isDestroyed() end

--- Returns whether the fixture is a sensor.
---@return boolean sensor # If the fixture is a sensor.
function love.Fixture.isSensor() end

--- Casts a ray against the shape of the fixture and returns the surface normal vector and the line position where the ray hit. If the ray missed the shape, nil will be returned. The ray starts on the first point of the input line and goes towards the second point of the line. The fifth argument is the maximum distance the ray is going to travel as a scale factor of the input line length. The childIndex parameter is used to specify which child of a parent shape, such as a ChainShape, will be ray casted. For ChainShapes, the index of 1 is the first edge on the chain. Ray casting a parent shape will only test the child specified so if you want to test every shape of the parent, you must loop through all of its children. The world position of the impact can be calculated by multiplying the line vector with the third return value and adding it to the line starting point. hitx, hity = x1 + (x2 - x1) * fraction, y1 + (y2 - y1) * fraction
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param maxFraction number
---@param childIndex? number
---@return number xn # The x component of the normal vector of the edge where the ray hit the shape.
---@return number yn # The y component of the normal vector of the edge where the ray hit the shape.
---@return number fraction # The position on the input line where the intersection happened as a factor of the line length.
function love.Fixture.rayCast(x1, y1, x2, y2, maxFraction, childIndex) end

--- Sets the categories the fixture belongs to. There can be up to 16 categories represented as a number from 1 to 16. All fixture's default category is 1.
---@param ... number
function love.Fixture.setCategory(...) end

--- Sets the density of the fixture. Call Body:resetMassData if this needs to take effect immediately.
---@param density number
function love.Fixture.setDensity(density) end

--- Sets the filter data of the fixture. Groups, categories, and mask can be used to define the collision behaviour of the fixture. If two fixtures are in the same group they either always collide if the group is positive, or never collide if it's negative. If the group is zero or they do not match, then the contact filter checks if the fixtures select a category of the other fixture with their masks. The fixtures do not collide if that's not the case. If they do have each other's categories selected, the return value of the custom contact filter will be used. They always collide if none was set. There can be up to 16 categories. Categories and masks are encoded as the bits of a 16-bit integer. When created, prior to calling this function, all fixtures have category set to 1, mask set to 65535 (all categories) and group set to 0. This function allows setting all filter data for a fixture at once. To set only the categories, the mask or the group, you can use Fixture:setCategory, Fixture:setMask or Fixture:setGroupIndex respectively.
---@param categories number
---@param mask number
---@param group number
function love.Fixture.setFilterData(categories, mask, group) end

--- Sets the friction of the fixture. Friction determines how shapes react when they 'slide' along other shapes. Low friction indicates a slippery surface, like ice, while high friction indicates a rough surface, like concrete. Range: 0.0 - 1.0.
---@param friction number
function love.Fixture.setFriction(friction) end

--- Sets the group the fixture belongs to. Fixtures with the same group will always collide if the group is positive or never collide if it's negative. The group zero means no group. The groups range from -32768 to 32767.
---@param group number
function love.Fixture.setGroupIndex(group) end

--- Sets the category mask of the fixture. There can be up to 16 categories represented as a number from 1 to 16. This fixture will '''NOT''' collide with the fixtures that are in the selected categories if the other fixture also has a category of this fixture selected.
---@param ... number
function love.Fixture.setMask(...) end

--- Sets the restitution of the fixture.
---@param restitution number
function love.Fixture.setRestitution(restitution) end

--- Sets whether the fixture should act as a sensor. Sensors do not cause collision responses, but the begin-contact and end-contact World callbacks will still be called for this fixture.
---@param sensor boolean
function love.Fixture.setSensor(sensor) end

--- Associates a Lua value with the fixture. To delete the reference, explicitly pass nil.
---@param value any
function love.Fixture.setUserData(value) end

--- Checks if a point is inside the shape of the fixture.
---@param x number
---@param y number
---@return boolean isInside # True if the point is inside or false if it is outside.
function love.Fixture.testPoint(x, y) end
