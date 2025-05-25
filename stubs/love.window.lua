---@meta

-- Module: love.window
love.window = {}
--- Closes the window. It can be reopened with love.window.setMode.
function love.window.close() end

--- Converts a number from pixels to density-independent units. The pixel density inside the window might be greater (or smaller) than the 'size' of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.fromPixels(1600) would return 800 in that case. This function converts coordinates from pixels to the size users are expecting them to display at onscreen. love.window.toPixels does the opposite. The highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled. Most LÖVE functions return values and expect arguments in terms of pixels rather than density-independent units.
---@param pixelvalue number
---@return number value # The converted number, in density-independent units.
function love.window.fromPixels(pixelvalue) end

--- Gets the DPI scale factor associated with the window. The pixel density inside the window might be greater (or smaller) than the 'size' of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.getDPIScale() would return 2.0 in that case. The love.window.fromPixels and love.window.toPixels functions can also be used to convert between units. The highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled.
---@return number scale # The pixel scale factor associated with the window.
function love.window.getDPIScale() end

--- Gets the width and height of the desktop.
---@param displayindex? number
---@return number width # The width of the desktop.
---@return number height # The height of the desktop.
function love.window.getDesktopDimensions(displayindex) end

--- Gets the number of connected monitors.
---@return number count # The number of currently connected displays.
function love.window.getDisplayCount() end

--- Gets the name of a display.
---@param displayindex? number
---@return string name # The name of the specified display.
function love.window.getDisplayName(displayindex) end

--- Gets current device display orientation.
---@param displayindex? number
---@return DisplayOrientation orientation # Current device display orientation.
function love.window.getDisplayOrientation(displayindex) end

--- Gets whether the window is fullscreen.
---@return boolean fullscreen # True if the window is fullscreen, false otherwise.
---@return FullscreenType fstype # The type of fullscreen mode used.
function love.window.getFullscreen() end

--- Gets a list of supported fullscreen modes.
---@param displayindex? number
---@return table modes # A table of width/height pairs. (Note that this may not be in order.)
function love.window.getFullscreenModes(displayindex) end

--- Gets the window icon.
---@return ImageData imagedata # The window icon imagedata, or nil if no icon has been set with love.window.setIcon.
function love.window.getIcon() end

--- Gets the display mode and properties of the window.
---@return number width # Window width.
---@return number height # Window height.
---@return table flags # Table with the window properties:
function love.window.getMode() end

--- Gets the position of the window on the screen. The window position is in the coordinate space of the display it is currently in.
---@return number x # The x-coordinate of the window's position.
---@return number y # The y-coordinate of the window's position.
---@return number displayindex # The index of the display that the window is in.
function love.window.getPosition() end

--- Gets area inside the window which is known to be unobstructed by a system title bar, the iPhone X notch, etc. Useful for making sure UI elements can be seen by the user.
---@return number x # Starting position of safe area (x-axis).
---@return number y # Starting position of safe area (y-axis).
---@return number w # Width of safe area.
---@return number h # Height of safe area.
function love.window.getSafeArea() end

--- Gets the window title.
---@return string title # The current window title.
function love.window.getTitle() end

--- Gets current vertical synchronization (vsync).
---@return number vsync # Current vsync status. 1 if enabled, 0 if disabled, and -1 for adaptive vsync.
function love.window.getVSync() end

--- Checks if the game window has keyboard focus.
---@return boolean focus # True if the window has the focus or false if not.
function love.window.hasFocus() end

--- Checks if the game window has mouse focus.
---@return boolean focus # True if the window has mouse focus or false if not.
function love.window.hasMouseFocus() end

--- Gets whether the display is allowed to sleep while the program is running. Display sleep is disabled by default. Some types of input (e.g. joystick button presses) might not prevent the display from sleeping, if display sleep is allowed.
---@return boolean enabled # True if system display sleep is enabled / allowed, false otherwise.
function love.window.isDisplaySleepEnabled() end

--- Gets whether the Window is currently maximized. The window can be maximized if it is not fullscreen and is resizable, and either the user has pressed the window's Maximize button or love.window.maximize has been called.
---@return boolean maximized # True if the window is currently maximized in windowed mode, false otherwise.
function love.window.isMaximized() end

--- Gets whether the Window is currently minimized.
---@return boolean minimized # True if the window is currently minimized, false otherwise.
function love.window.isMinimized() end

--- Checks if the window is open.
---@return boolean open # True if the window is open, false otherwise.
function love.window.isOpen() end

--- Checks if the game window is visible. The window is considered visible if it's not minimized and the program isn't hidden.
---@return boolean visible # True if the window is visible or false if not.
function love.window.isVisible() end

--- Makes the window as large as possible. This function has no effect if the window isn't resizable, since it essentially programmatically presses the window's 'maximize' button.
function love.window.maximize() end

--- Minimizes the window to the system's task bar / dock.
function love.window.minimize() end

--- Causes the window to request the attention of the user if it is not in the foreground. In Windows the taskbar icon will flash, and in OS X the dock icon will bounce.
---@param continuous? boolean
function love.window.requestAttention(continuous) end

--- Restores the size and position of the window if it was minimized or maximized.
function love.window.restore() end

--- Sets whether the display is allowed to sleep while the program is running. Display sleep is disabled by default. Some types of input (e.g. joystick button presses) might not prevent the display from sleeping, if display sleep is allowed.
---@param enable boolean
function love.window.setDisplaySleepEnabled(enable) end

--- Enters or exits fullscreen. The display to use when entering fullscreen is chosen based on which display the window is currently in, if multiple monitors are connected.
---@param fullscreen boolean
---@return boolean success # True if an attempt to enter fullscreen was successful, false otherwise.
function love.window.setFullscreen(fullscreen) end

--- Sets the window icon until the game is quit. Not all operating systems support very large icon images.
---@param imagedata any
---@return boolean success # Whether the icon has been set successfully.
function love.window.setIcon(imagedata) end

--- Sets the display mode and properties of the window. If width or height is 0, setMode will use the width and height of the desktop. Changing the display mode may have side effects: for example, canvases will be cleared and values sent to shaders with canvases beforehand or re-draw to them afterward if you need to.
---@param width number
---@param height number
---@param flags table
---@return boolean success # True if successful, false otherwise.
function love.window.setMode(width, height, flags) end

--- Sets the position of the window on the screen. The window position is in the coordinate space of the specified display.
---@param x number
---@param y number
---@param displayindex? number
function love.window.setPosition(x, y, displayindex) end

--- Sets the window title.
---@param title string
function love.window.setTitle(title) end

--- Sets vertical synchronization mode.
---@param vsync number
function love.window.setVSync(vsync) end

--- Displays a message box dialog above the love window. The message box contains a title, optional text, and buttons.
---@param title string
---@param message string
---@param type? any
---@param attachtowindow? boolean
---@return boolean success # Whether the message box was successfully displayed.
function love.window.showMessageBox(title, message, type, attachtowindow) end

--- Converts a number from density-independent units to pixels. The pixel density inside the window might be greater (or smaller) than the 'size' of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.toPixels(800) would return 1600 in that case. This is used to convert coordinates from the size users are expecting them to display at onscreen to pixels. love.window.fromPixels does the opposite. The highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled. Most LÖVE functions return values and expect arguments in terms of pixels rather than density-independent units.
---@param value number
---@return number pixelvalue # The converted number, in pixels.
function love.window.toPixels(value) end

--- Sets the display mode and properties of the window, without modifying unspecified properties. If width or height is 0, updateMode will use the width and height of the desktop. Changing the display mode may have side effects: for example, canvases will be cleared. Make sure to save the contents of canvases beforehand or re-draw to them afterward if you need to.
---@param width number
---@param height number
---@param settings? table
---@return boolean success # True if successful, false otherwise.
function love.window.updateMode(width, height, settings) end
