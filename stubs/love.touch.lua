-- Module: love.touch
love.touch = {}
--- Gets the current position of the specified touch-press, in pixels.
---@param id light userdata
---@return number x # The position along the x-axis of the touch-press inside the window, in pixels.
---@return number y # The position along the y-axis of the touch-press inside the window, in pixels.
function love.getPosition(id) end

--- Gets the current pressure of the specified touch-press.
---@param id light userdata
---@return number pressure # The pressure of the touch-press. Most touch screens aren't pressure sensitive, in which case the pressure will be 1.
function love.getPressure(id) end

--- Gets a list of all active touch-presses.
---@return table<light userdata> touches # A list of active touch-press id values, which can be used with love.touch.getPosition.
function love.getTouches() end
