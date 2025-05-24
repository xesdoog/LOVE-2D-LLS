-- Module: love.Rasterizer
love.Rasterizer = {}
--- Gets font advance.
---@return number advance # Font advance.
function love.getAdvance() end

--- Gets ascent height.
---@return number height # Ascent height.
function love.getAscent() end

--- Gets descent height.
---@return number height # Descent height.
function love.getDescent() end

--- Gets number of glyphs in font.
---@return number count # Glyphs count.
function love.getGlyphCount() end

--- Gets glyph data of a specified glyph.
---@param glyph string
---@return GlyphData glyphData # Glyph data
function love.getGlyphData(glyph) end

--- Gets font height.
---@return number height # Font height
function love.getHeight() end

--- Gets line height of a font.
---@return number height # Line height of a font.
function love.getLineHeight() end

--- Checks if font contains specified glyphs.
---@param glyph1 string or number
---@param ... string or number
---@return boolean hasGlyphs # Whatever font contains specified glyphs.
function love.hasGlyphs(glyph1, ...) end
