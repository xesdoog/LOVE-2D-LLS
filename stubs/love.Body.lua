-- Module: love.Body
love.Body = {}
--- Applies an angular impulse to a body. This makes a single, instantaneous addition to the body momentum. A body with with a larger mass will react less. The reaction does '''not''' depend on the timestep, and is equivalent to applying a force continuously for 1 second. Impulses are best used to give a single push to a body. For a continuous push to a body it is better to use Body:applyForce.
---@param impulse number
function love.applyAngularImpulse(impulse) end

--- Apply force to a Body. A force pushes a body in a direction. A body with with a larger mass will react less. The reaction also depends on how long a force is applied: since the force acts continuously over the entire timestep, a short timestep will only push the body for a short time. Thus forces are best used for many timesteps to give a continuous push to a body (like gravity). For a single push that is independent of timestep, it is better to use Body:applyLinearImpulse. If the position to apply the force is not given, it will act on the center of mass of the body. The part of the force not directed towards the center of mass will cause the body to spin (and depends on the rotational inertia). Note that the force components and position must be given in world coordinates.
---@param fx number
---@param fy number
function love.applyForce(fx, fy) end

--- Applies an impulse to a body. This makes a single, instantaneous addition to the body momentum. An impulse pushes a body in a direction. A body with with a larger mass will react less. The reaction does '''not''' depend on the timestep, and is equivalent to applying a force continuously for 1 second. Impulses are best used to give a single push to a body. For a continuous push to a body it is better to use Body:applyForce. If the position to apply the impulse is not given, it will act on the center of mass of the body. The part of the impulse not directed towards the center of mass will cause the body to spin (and depends on the rotational inertia). Note that the impulse components and position must be given in world coordinates.
---@param ix number
---@param iy number
function love.applyLinearImpulse(ix, iy) end

--- Apply torque to a body. Torque is like a force that will change the angular velocity (spin) of a body. The effect will depend on the rotational inertia a body has.
---@param torque number
function love.applyTorque(torque) end

--- Explicitly destroys the Body and all fixtures and joints attached to it. An error will occur if you attempt to use the object after calling this function. In 0.7.2, when you don't have time to wait for garbage collection, this function may be used to free the object immediately.
function love.destroy() end

--- Get the angle of the body. The angle is measured in radians. If you need to transform it to degrees, use math.deg. A value of 0 radians will mean 'looking to the right'. Although radians increase counter-clockwise, the y axis points down so it becomes ''clockwise'' from our point of view.
---@return number angle # The angle in radians.
function love.getAngle() end

--- Gets the Angular damping of the Body The angular damping is the ''rate of decrease of the angular velocity over time'': A spinning body with no damping and no external forces will continue spinning indefinitely. A spinning body with damping will gradually stop spinning. Damping is not the same as friction - they can be modelled together. However, only damping is provided by Box2D (and LOVE). Damping parameters should be between 0 and infinity, with 0 meaning no damping, and infinity meaning full damping. Normally you will use a damping value between 0 and 0.1.
---@return number damping # The value of the angular damping.
function love.getAngularDamping() end

--- Get the angular velocity of the Body. The angular velocity is the ''rate of change of angle over time''. It is changed in World:update by applying torques, off centre forces/impulses, and angular damping. It can be set directly with Body:setAngularVelocity. If you need the ''rate of change of position over time'', use Body:getLinearVelocity.
---@return number w # The angular velocity in radians/second.
function love.getAngularVelocity() end

--- Gets a list of all Contacts attached to the Body.
---@return table<Contact> contacts # A list with all contacts associated with the Body.
function love.getContacts() end

--- Returns a table with all fixtures.
---@return table<Fixture> fixtures # A sequence with all fixtures.
function love.getFixtures() end

--- Returns the gravity scale factor.
---@return number scale # The gravity scale factor.
function love.getGravityScale() end

--- Gets the rotational inertia of the body. The rotational inertia is how hard is it to make the body spin.
---@return number inertia # The rotational inertial of the body.
function love.getInertia() end

--- Returns a table containing the Joints attached to this Body.
---@return table<Joint> joints # A sequence with the Joints attached to the Body.
function love.getJoints() end

--- Gets the linear damping of the Body. The linear damping is the ''rate of decrease of the linear velocity over time''. A moving body with no damping and no external forces will continue moving indefinitely, as is the case in space. A moving body with damping will gradually stop moving. Damping is not the same as friction - they can be modelled together.
---@return number damping # The value of the linear damping.
function love.getLinearDamping() end

--- Gets the linear velocity of the Body from its center of mass. The linear velocity is the ''rate of change of position over time''. If you need the ''rate of change of angle over time'', use Body:getAngularVelocity. If you need to get the linear velocity of a point different from the center of mass: * Body:getLinearVelocityFromLocalPoint allows you to specify the point in local coordinates. * Body:getLinearVelocityFromWorldPoint allows you to specify the point in world coordinates. See page 136 of 'Essential Mathematics for Games and Interactive Applications' for definitions of local and world coordinates.
---@return number x # The x-component of the velocity vector
---@return number y # The y-component of the velocity vector
function love.getLinearVelocity() end

--- Get the linear velocity of a point on the body. The linear velocity for a point on the body is the velocity of the body center of mass plus the velocity at that point from the body spinning. The point on the body must given in local coordinates. Use Body:getLinearVelocityFromWorldPoint to specify this with world coordinates.
---@param x number
---@param y number
---@return number vx # The x component of velocity at point (x,y).
---@return number vy # The y component of velocity at point (x,y).
function love.getLinearVelocityFromLocalPoint(x, y) end

--- Get the linear velocity of a point on the body. The linear velocity for a point on the body is the velocity of the body center of mass plus the velocity at that point from the body spinning. The point on the body must given in world coordinates. Use Body:getLinearVelocityFromLocalPoint to specify this with local coordinates.
---@param x number
---@param y number
---@return number vx # The x component of velocity at point (x,y).
---@return number vy # The y component of velocity at point (x,y).
function love.getLinearVelocityFromWorldPoint(x, y) end

--- Get the center of mass position in local coordinates. Use Body:getWorldCenter to get the center of mass in world coordinates.
---@return number x # The x coordinate of the center of mass.
---@return number y # The y coordinate of the center of mass.
function love.getLocalCenter() end

--- Transform a point from world coordinates to local coordinates.
---@param worldX number
---@param worldY number
---@return number localX # The x position in local coordinates.
---@return number localY # The y position in local coordinates.
function love.getLocalPoint(worldX, worldY) end

--- Transforms multiple points from world coordinates to local coordinates.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param ... number
---@return number x1 # (Result) The transformed x position of the first point.
---@return number y1 # (Result) The transformed y position of the first point.
---@return number x2 # (Result) The transformed x position of the second point.
---@return number y2 # (Result) The transformed y position of the second point.
---@return number ... # (Result) Additional transformed x and y position of the points.
function love.getLocalPoints(x1, y1, x2, y2, ...) end

--- Transform a vector from world coordinates to local coordinates.
---@param worldX number
---@param worldY number
---@return number localX # The vector x component in local coordinates.
---@return number localY # The vector y component in local coordinates.
function love.getLocalVector(worldX, worldY) end

--- Get the mass of the body. Static bodies always have a mass of 0.
---@return number mass # The mass of the body (in kilograms).
function love.getMass() end

--- Returns the mass, its center, and the rotational inertia.
---@return number x # The x position of the center of mass.
---@return number y # The y position of the center of mass.
---@return number mass # The mass of the body.
---@return number inertia # The rotational inertia.
function love.getMassData() end

--- Get the position of the body. Note that this may not be the center of mass of the body.
---@return number x # The x position.
---@return number y # The y position.
function love.getPosition() end

--- Get the position and angle of the body. Note that the position may not be the center of mass of the body. An angle of 0 radians will mean 'looking to the right'. Although radians increase counter-clockwise, the y axis points down so it becomes clockwise from our point of view.
---@return number x # The x component of the position.
---@return number y # The y component of the position.
---@return number angle # The angle in radians.
function love.getTransform() end

--- Returns the type of the body.
---@return BodyType type # The body type.
function love.getType() end

--- Returns the Lua value associated with this Body.
---@return any value # The Lua value associated with the Body.
function love.getUserData() end

--- Gets the World the body lives in.
---@return World world # The world the body lives in.
function love.getWorld() end

--- Get the center of mass position in world coordinates. Use Body:getLocalCenter to get the center of mass in local coordinates.
---@return number x # The x coordinate of the center of mass.
---@return number y # The y coordinate of the center of mass.
function love.getWorldCenter() end

--- Transform a point from local coordinates to world coordinates.
---@param localX number
---@param localY number
---@return number worldX # The x position in world coordinates.
---@return number worldY # The y position in world coordinates.
function love.getWorldPoint(localX, localY) end

--- Transforms multiple points from local coordinates to world coordinates.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return number x1 # The transformed x position of the first point.
---@return number y1 # The transformed y position of the first point.
---@return number x2 # The transformed x position of the second point.
---@return number y2 # The transformed y position of the second point.
function love.getWorldPoints(x1, y1, x2, y2) end

--- Transform a vector from local coordinates to world coordinates.
---@param localX number
---@param localY number
---@return number worldX # The vector x component in world coordinates.
---@return number worldY # The vector y component in world coordinates.
function love.getWorldVector(localX, localY) end

--- Get the x position of the body in world coordinates.
---@return number x # The x position in world coordinates.
function love.getX() end

--- Get the y position of the body in world coordinates.
---@return number y # The y position in world coordinates.
function love.getY() end

--- Returns whether the body is actively used in the simulation.
---@return boolean status # True if the body is active or false if not.
function love.isActive() end

--- Returns the sleep status of the body.
---@return boolean status # True if the body is awake or false if not.
function love.isAwake() end

--- Get the bullet status of a body. There are two methods to check for body collisions: * at their location when the world is updated (default) * using continuous collision detection (CCD) The default method is efficient, but a body moving very quickly may sometimes jump over another body without producing a collision. A body that is set as a bullet will use CCD. This is less efficient, but is guaranteed not to jump when moving quickly. Note that static bodies (with zero mass) always use CCD, so your walls will not let a fast moving body pass through even if it is not a bullet.
---@return boolean status # The bullet status of the body.
function love.isBullet() end

--- Gets whether the Body is destroyed. Destroyed bodies cannot be used.
---@return boolean destroyed # Whether the Body is destroyed.
function love.isDestroyed() end

--- Returns whether the body rotation is locked.
---@return boolean fixed # True if the body's rotation is locked or false if not.
function love.isFixedRotation() end

--- Returns the sleeping behaviour of the body.
---@return boolean allowed # True if the body is allowed to sleep or false if not.
function love.isSleepingAllowed() end

--- Gets whether the Body is touching the given other Body.
---@param otherbody Body
---@return boolean touching # True if this body is touching the other body, false otherwise.
function love.isTouching(otherbody) end

--- Resets the mass of the body by recalculating it from the mass properties of the fixtures.
function love.resetMassData() end

--- Sets whether the body is active in the world. An inactive body does not take part in the simulation. It will not move or cause any collisions.
---@param active boolean
function love.setActive(active) end

--- Set the angle of the body. The angle is measured in radians. If you need to transform it from degrees, use math.rad. A value of 0 radians will mean 'looking to the right'. Although radians increase counter-clockwise, the y axis points down so it becomes ''clockwise'' from our point of view. It is possible to cause a collision with another body by changing its angle. 
---@param angle number
function love.setAngle(angle) end

--- Sets the angular damping of a Body See Body:getAngularDamping for a definition of angular damping. Angular damping can take any value from 0 to infinity. It is recommended to stay between 0 and 0.1, though. Other values will look unrealistic.
---@param damping number
function love.setAngularDamping(damping) end

--- Sets the angular velocity of a Body. The angular velocity is the ''rate of change of angle over time''. This function will not accumulate anything; any impulses previously applied since the last call to World:update will be lost. 
---@param w number
function love.setAngularVelocity(w) end

--- Wakes the body up or puts it to sleep.
---@param awake boolean
function love.setAwake(awake) end

--- Set the bullet status of a body. There are two methods to check for body collisions: * at their location when the world is updated (default) * using continuous collision detection (CCD) The default method is efficient, but a body moving very quickly may sometimes jump over another body without producing a collision. A body that is set as a bullet will use CCD. This is less efficient, but is guaranteed not to jump when moving quickly. Note that static bodies (with zero mass) always use CCD, so your walls will not let a fast moving body pass through even if it is not a bullet.
---@param status boolean
function love.setBullet(status) end

--- Set whether a body has fixed rotation. Bodies with fixed rotation don't vary the speed at which they rotate. Calling this function causes the mass to be reset. 
---@param isFixed boolean
function love.setFixedRotation(isFixed) end

--- Sets a new gravity scale factor for the body.
---@param scale number
function love.setGravityScale(scale) end

--- Set the inertia of a body.
---@param inertia number
function love.setInertia(inertia) end

--- Sets the linear damping of a Body See Body:getLinearDamping for a definition of linear damping. Linear damping can take any value from 0 to infinity. It is recommended to stay between 0 and 0.1, though. Other values will make the objects look 'floaty'(if gravity is enabled).
---@param ld number
function love.setLinearDamping(ld) end

--- Sets a new linear velocity for the Body. This function will not accumulate anything; any impulses previously applied since the last call to World:update will be lost.
---@param x number
---@param y number
function love.setLinearVelocity(x, y) end

--- Sets a new body mass.
---@param mass number
function love.setMass(mass) end

--- Overrides the calculated mass data.
---@param x number
---@param y number
---@param mass number
---@param inertia number
function love.setMassData(x, y, mass, inertia) end

--- Set the position of the body. Note that this may not be the center of mass of the body. This function cannot wake up the body.
---@param x number
---@param y number
function love.setPosition(x, y) end

--- Sets the sleeping behaviour of the body. Should sleeping be allowed, a body at rest will automatically sleep. A sleeping body is not simulated unless it collided with an awake body. Be wary that one can end up with a situation like a floating sleeping body if the floor was removed.
---@param allowed boolean
function love.setSleepingAllowed(allowed) end

--- Set the position and angle of the body. Note that the position may not be the center of mass of the body. An angle of 0 radians will mean 'looking to the right'. Although radians increase counter-clockwise, the y axis points down so it becomes clockwise from our point of view. This function cannot wake up the body.
---@param x number
---@param y number
---@param angle number
function love.setTransform(x, y, angle) end

--- Sets a new body type.
---@param type BodyType
function love.setType(type) end

--- Associates a Lua value with the Body. To delete the reference, explicitly pass nil.
---@param value any
function love.setUserData(value) end

--- Set the x position of the body. This function cannot wake up the body. 
---@param x number
function love.setX(x) end

--- Set the y position of the body. This function cannot wake up the body. 
---@param y number
function love.setY(y) end
