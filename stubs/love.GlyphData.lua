-- Module: love.GlyphData
love.GlyphData = {}
--- Gets glyph advance.
---@return number advance # Glyph advance.
function love.getAdvance() end

--- Gets glyph bearing.
---@return number bx # Glyph bearing X.
---@return number by # Glyph bearing Y.
function love.getBearing() end

--- Gets glyph bounding box.
---@return number x # Glyph position x.
---@return number y # Glyph position y.
---@return number width # Glyph width.
---@return number height # Glyph height.
function love.getBoundingBox() end

--- Gets glyph dimensions.
---@return number width # Glyph width.
---@return number height # Glyph height.
function love.getDimensions() end

--- Gets glyph pixel format.
---@return PixelFormat format # Glyph pixel format.
function love.getFormat() end

--- Gets glyph number.
---@return number glyph # Glyph number.
function love.getGlyph() end

--- Gets glyph string.
---@return string glyph # Glyph string.
function love.getGlyphString() end

--- Gets glyph height.
---@return number height # Glyph height.
function love.getHeight() end

--- Gets glyph width.
---@return number width # Glyph width.
function love.getWidth() end
