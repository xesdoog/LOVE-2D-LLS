---@meta

-- Module: love.Rasterizer
love.Rasterizer = {}
--- Gets font advance.
---@return number advance # Font advance.
function love.Rasterizer.getAdvance() end

--- Gets ascent height.
---@return number height # Ascent height.
function love.Rasterizer.getAscent() end

--- Gets descent height.
---@return number height # Descent height.
function love.Rasterizer.getDescent() end

--- Gets number of glyphs in font.
---@return number count # Glyphs count.
function love.Rasterizer.getGlyphCount() end

--- Gets glyph data of a specified glyph.
---@param glyph string
---@return GlyphData glyphData # Glyph data
function love.Rasterizer.getGlyphData(glyph) end

--- Gets font height.
---@return number height # Font height
function love.Rasterizer.getHeight() end

--- Gets line height of a font.
---@return number height # Line height of a font.
function love.Rasterizer.getLineHeight() end

--- Checks if font contains specified glyphs.
---@param glyph1 any
---@param ... any
---@return boolean hasGlyphs # Whatever font contains specified glyphs.
function love.Rasterizer.hasGlyphs(glyph1, ...) end
