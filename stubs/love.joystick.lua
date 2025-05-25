---@meta

-- Module: love.Joystick
love.Joystick = {}
--- Gets the direction of each axis.
---@return number axisDir1 # Direction of axis1.
---@return number axisDir2 # Direction of axis2.
---@return number axisDirN # Direction of axisN.
function love.Joystick.getAxes() end

--- Gets the direction of an axis.
---@param axis number
---@return number direction # Current value of the axis.
function love.Joystick.getAxis(axis) end

--- Gets the number of axes on the joystick.
---@return number axes # The number of axes available.
function love.Joystick.getAxisCount() end

--- Gets the number of buttons on the joystick.
---@return number buttons # The number of buttons available.
function love.Joystick.getButtonCount() end

--- Gets the USB vendor ID, product ID, and product version numbers of joystick which consistent across operating systems. Can be used to show different icons, etc. for different gamepads.
---@return number vendorID # The USB vendor ID of the joystick.
---@return number productID # The USB product ID of the joystick.
---@return number productVersion # The product version of the joystick.
function love.Joystick.getDeviceInfo() end

--- Gets a stable GUID unique to the type of the physical joystick which does not change over time. For example, all Sony Dualshock 3 controllers in OS X have the same GUID. The value is platform-dependent.
---@return string guid # The Joystick type's OS-dependent unique identifier.
function love.Joystick.getGUID() end

--- Gets the direction of a virtual gamepad axis. If the Joystick isn't recognized as a gamepad or isn't connected, this function will always return 0.
---@param axis any
---@return number direction # Current value of the axis.
function love.Joystick.getGamepadAxis(axis) end

--- Gets the button, axis or hat that a virtual gamepad input is bound to.
---@param axis any
---@return JoystickInputType inputtype # The type of input the virtual gamepad axis is bound to.
---@return number inputindex # The index of the Joystick's button, axis or hat that the virtual gamepad axis is bound to.
---@return JoystickHat hatdirection # The direction of the hat, if the virtual gamepad axis is bound to a hat. nil otherwise.
function love.Joystick.getGamepadMapping(axis) end

--- Gets the full gamepad mapping string of this Joystick, or nil if it's not recognized as a gamepad. The mapping string contains binding information used to map the Joystick's buttons an axes to the standard gamepad layout, and can be used later with love.joystick.loadGamepadMappings.
---@return string mappingstring # A string containing the Joystick's gamepad mappings, or nil if the Joystick is not recognized as a gamepad.
function love.Joystick.getGamepadMappingString() end

--- Gets the direction of the Joystick's hat.
---@param hat number
---@return JoystickHat direction # The direction the hat is pushed.
function love.Joystick.getHat(hat) end

--- Gets the number of hats on the joystick.
---@return number hats # How many hats the joystick has.
function love.Joystick.getHatCount() end

--- Gets the joystick's unique identifier. The identifier will remain the same for the life of the game, even when the Joystick is disconnected and reconnected, but it '''will''' change when the game is re-launched.
---@return number id # The Joystick's unique identifier. Remains the same as long as the game is running.
---@return number instanceid # Unique instance identifier. Changes every time the Joystick is reconnected. nil if the Joystick is not connected.
function love.Joystick.getID() end

--- Gets the name of the joystick.
---@return string name # The name of the joystick.
function love.Joystick.getName() end

--- Gets the current vibration motor strengths on a Joystick with rumble support.
---@return number left # Current strength of the left vibration motor on the Joystick.
---@return number right # Current strength of the right vibration motor on the Joystick.
function love.Joystick.getVibration() end

--- Gets whether the Joystick is connected.
---@return boolean connected # True if the Joystick is currently connected, false otherwise.
function love.Joystick.isConnected() end

--- Checks if a button on the Joystick is pressed. LÖVE 0.9.0 had a bug which required the button indices passed to Joystick:isDown to be 0-based instead of 1-based, for example button 1 would be 0 for this function. It was fixed in 0.9.1.
---@param buttonN number
---@return boolean anyDown # True if any supplied button is down, false if not.
function love.Joystick.isDown(buttonN) end

--- Gets whether the Joystick is recognized as a gamepad. If this is the case, the Joystick's buttons and axes can be used in a standardized manner across different operating systems and joystick models via Joystick:getGamepadAxis, Joystick:isGamepadDown, love.gamepadpressed, and related functions. LÖVE automatically recognizes most popular controllers with a similar layout to the Xbox 360 controller as gamepads, but you can add more with love.joystick.setGamepadMapping.
---@return boolean isgamepad # True if the Joystick is recognized as a gamepad, false otherwise.
function love.Joystick.isGamepad() end

--- Checks if a virtual gamepad button on the Joystick is pressed. If the Joystick is not recognized as a Gamepad or isn't connected, then this function will always return false.
---@param buttonN any
---@return boolean anyDown # True if any supplied button is down, false if not.
function love.Joystick.isGamepadDown(buttonN) end

--- Gets whether the Joystick supports vibration.
---@return boolean supported # True if rumble / force feedback vibration is supported on this Joystick, false if not.
function love.Joystick.isVibrationSupported() end

--- Sets the vibration motor speeds on a Joystick with rumble support. Most common gamepads have this functionality, although not all drivers give proper support. Use Joystick:isVibrationSupported to check.
---@param left number
---@param right number
---@return boolean success # True if the vibration was successfully applied, false if not.
function love.Joystick.setVibration(left, right) end
