---@meta

-- Module: love
love = {}
--- Gets the current running version of LÖVE.
---@return number major # The major version of LÖVE, i.e. 0 for version 0.9.1.
---@return number minor # The minor version of LÖVE, i.e. 9 for version 0.9.1.
---@return number revision # The revision version of LÖVE, i.e. 1 for version 0.9.1.
---@return string codename # The codename of the current version, i.e. 'Baby Inspector' for version 0.9.1.
function love.getVersion() end

--- Gets whether LÖVE displays warnings when using deprecated functionality. It is disabled by default in fused mode, and enabled by default otherwise. When deprecation output is enabled, the first use of a formally deprecated LÖVE API will show a message at the bottom of the screen for a short time, and print the message to the console.
---@return boolean enabled # Whether deprecation output is enabled.
function love.hasDeprecationOutput() end

--- Gets whether the given version is compatible with the current running version of LÖVE.
---@param version string
---@return boolean compatible # Whether the given version is compatible with the current running version of LÖVE.
function love.isVersionCompatible(version) end

--- Sets whether LÖVE displays warnings when using deprecated functionality. It is disabled by default in fused mode, and enabled by default otherwise. When deprecation output is enabled, the first use of a formally deprecated LÖVE API will show a message at the bottom of the screen for a short time, and print the message to the console.
---@param enable boolean
function love.setDeprecationOutput(enable) end

--- If a file called conf.lua is present in your game folder (or .love file), it is run before the LÖVE modules are loaded. You can use this file to overwrite the love.conf function, which is later called by the LÖVE 'boot' script. Using the love.conf function, you can set some configuration options, and change things like the default size of the window, which modules are loaded, and other stuff.
---@param t table
function love.conf(t) end

--- Callback function triggered when a directory is dragged and dropped onto the window.
---@param path string
function love.directorydropped(path) end

--- Called when the device display orientation changed, for example, user rotated their phone 180 degrees.
---@param index number
---@param orientation any
function love.displayrotated(index, orientation) end

--- Callback function used to draw on the screen every frame.
function love.draw() end

--- The error handler, used to display error messages.
---@param msg string
---@return function mainLoop # Function which handles one frame, including events and rendering, when called. If this is nil then LÖVE exits immediately.
function love.errorhandler(msg) end

--- Callback function triggered when a file is dragged and dropped onto the window.
---@param file any
function love.filedropped(file) end

--- Callback function triggered when window receives or loses focus.
---@param focus boolean
function love.focus(focus) end

--- Called when a Joystick's virtual gamepad axis is moved.
---@param joystick any
---@param axis any
---@param value number
function love.gamepadaxis(joystick, axis, value) end

--- Called when a Joystick's virtual gamepad button is pressed.
---@param joystick any
---@param button any
function love.gamepadpressed(joystick, button) end

--- Called when a Joystick's virtual gamepad button is released.
---@param joystick any
---@param button any
function love.gamepadreleased(joystick, button) end

--- Called when a Joystick is connected.
---@param joystick any
function love.joystickadded(joystick) end

--- Called when a joystick axis moves.
---@param joystick any
---@param axis number
---@param value number
function love.joystickaxis(joystick, axis, value) end

--- Called when a joystick hat direction changes.
---@param joystick any
---@param hat number
---@param direction any
function love.joystickhat(joystick, hat, direction) end

--- Called when a joystick button is pressed.
---@param joystick any
---@param button number
function love.joystickpressed(joystick, button) end

--- Called when a joystick button is released.
---@param joystick any
---@param button number
function love.joystickreleased(joystick, button) end

--- Called when a Joystick is disconnected.
---@param joystick any
function love.joystickremoved(joystick) end

--- Callback function triggered when a key is pressed.
---@param key any
---@param scancode any
---@param isrepeat boolean
function love.keypressed(key, scancode, isrepeat) end

--- Callback function triggered when a keyboard key is released.
---@param key any
---@param scancode any
function love.keyreleased(key, scancode) end

--- This function is called exactly once at the beginning of the game.
---@param arg table
---@param unfilteredArg table
function love.load(arg, unfilteredArg) end

--- Callback function triggered when the system is running out of memory on mobile devices. Mobile operating systems may forcefully kill the game if it uses too much memory, so any non-critical resource should be removed if possible (by setting all variables referencing the resources to '''nil'''), when this event is triggered. Sounds and images in particular tend to use the most memory.
function love.lowmemory() end

--- Callback function triggered when window receives or loses mouse focus.
---@param focus boolean
function love.mousefocus(focus) end

--- Callback function triggered when the mouse is moved.
---@param x number
---@param y number
---@param dx number
---@param dy number
---@param istouch boolean
function love.mousemoved(x, y, dx, dy, istouch) end

--- Callback function triggered when a mouse button is pressed.
---@param x number
---@param y number
---@param button number
---@param istouch boolean
---@param presses number
function love.mousepressed(x, y, button, istouch, presses) end

--- Callback function triggered when a mouse button is released.
---@param x number
---@param y number
---@param button number
---@param istouch boolean
---@param presses number
function love.mousereleased(x, y, button, istouch, presses) end

--- Callback function triggered when the game is closed.
---@return boolean r # Abort quitting. If true, do not close the game.
function love.quit() end

--- Called when the window is resized, for example if the user resizes the window, or if love.window.setMode is called with an unsupported width or height in fullscreen and the window chooses the closest appropriate size.
---@param w number
---@param h number
function love.resize(w, h) end

--- The main function, containing the main loop. A sensible default is used when left out.
---@return function mainLoop # Function which handlers one frame, including events and rendering when called.
function love.run() end

--- Called when the candidate text for an IME (Input Method Editor) has changed. The candidate text is not the final text that the user will eventually choose. Use love.textinput for that.
---@param text string
---@param start number
---@param length number
function love.textedited(text, start, length) end

--- Called when text has been entered by the user. For example if shift-2 is pressed on an American keyboard layout, the text '@' will be generated.
---@param text string
function love.textinput(text) end

--- Callback function triggered when a Thread encounters an error.
---@param thread any
---@param errorstr string
function love.threaderror(thread, errorstr) end

--- Callback function triggered when a touch press moves inside the touch screen.
---@param id lightuserdata
---@param x number
---@param y number
---@param dx number
---@param dy number
---@param pressure number
function love.touchmoved(id, x, y, dx, dy, pressure) end

--- Callback function triggered when the touch screen is touched.
---@param id lightuserdata
---@param x number
---@param y number
---@param dx number
---@param dy number
---@param pressure number
function love.touchpressed(id, x, y, dx, dy, pressure) end

--- Callback function triggered when the touch screen stops being touched.
---@param id lightuserdata
---@param x number
---@param y number
---@param dx number
---@param dy number
---@param pressure number
function love.touchreleased(id, x, y, dx, dy, pressure) end

--- Callback function used to update the state of the game every frame.
---@param dt number
function love.update(dt) end

--- Callback function triggered when window is minimized/hidden or unminimized by the user.
---@param visible boolean
function love.visible(visible) end

--- Callback function triggered when the mouse wheel is moved.
---@param x number
---@param y number
function love.wheelmoved(x, y) end

--- The superclass of all data.
function love.Data() end

--- The superclass of all LÖVE types.
function love.Object() end
