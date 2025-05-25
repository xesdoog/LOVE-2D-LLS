---@meta

-- Module: love.Text
love.Text = {}
--- Adds additional colored text to the Text object at the specified position.
---@param textstring string
---@param x? number
---@param y? number
---@param angle? number
---@param sx? number
---@param sy? number
---@param ox? number
---@param oy? number
---@param kx? number
---@param ky? number
---@return number index # An index number that can be used with Text:getWidth or Text:getHeight.
function love.Text.add(textstring, x, y, angle, sx, sy, ox, oy, kx, ky) end

--- Adds additional formatted / colored text to the Text object at the specified position. The word wrap limit is applied before any scaling, rotation, and other coordinate transformations. Therefore the amount of text per line stays constant given the same wrap limit, even if the scale arguments change.
---@param textstring string
---@param wraplimit number
---@param align any
---@param x number
---@param y number
---@param angle? number
---@param sx? number
---@param sy? number
---@param ox? number
---@param oy? number
---@param kx? number
---@param ky? number
---@return number index # An index number that can be used with Text:getWidth or Text:getHeight.
function love.Text.addf(textstring, wraplimit, align, x, y, angle, sx, sy, ox, oy, kx, ky) end

--- Clears the contents of the Text object.
function love.Text.clear() end

--- Gets the width and height of the text in pixels.
---@return number width # The width of the text. If multiple sub-strings have been added with Text:add, the width of the last sub-string is returned.
---@return number height # The height of the text. If multiple sub-strings have been added with Text:add, the height of the last sub-string is returned.
function love.Text.getDimensions() end

--- Gets the Font used with the Text object.
---@return Font font # The font used with this Text object.
function love.Text.getFont() end

--- Gets the height of the text in pixels.
---@return number  height  # The height of the text. If multiple sub-strings have been added with Text:add, the height of the last sub-string is returned.
function love.Text.getHeight() end

--- Gets the width of the text in pixels.
---@return number width # The width of the text. If multiple sub-strings have been added with Text:add, the width of the last sub-string is returned.
function love.Text.getWidth() end

--- Replaces the contents of the Text object with a new unformatted string.
---@param textstring string
function love.Text.set(textstring) end

--- Replaces the Font used with the text.
---@param font any
function love.Text.setFont(font) end

--- Replaces the contents of the Text object with a new formatted string.
---@param textstring string
---@param wraplimit number
---@param align any
function love.Text.setf(textstring, wraplimit, align) end
