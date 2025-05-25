---@meta

-- Module: love.Font
love.Font = {}
--- Gets the ascent of the Font. The ascent spans the distance between the baseline and the top of the glyph that reaches farthest from the baseline.
---@return number ascent # The ascent of the Font in pixels.
function love.Font.getAscent() end

--- Gets the baseline of the Font. Most scripts share the notion of a baseline: an imaginary horizontal line on which characters rest. In some scripts, parts of glyphs lie below the baseline.
---@return number baseline # The baseline of the Font in pixels.
function love.Font.getBaseline() end

--- Gets the DPI scale factor of the Font. The DPI scale factor represents relative pixel density. A DPI scale factor of 2 means the font's glyphs have twice the pixel density in each dimension (4 times as many pixels in the same area) compared to a font with a DPI scale factor of 1. The font size of TrueType fonts is scaled internally by the font's specified DPI scale factor. By default, LÖVE uses the screen's DPI scale factor when creating TrueType fonts.
---@return number dpiscale # The DPI scale factor of the Font.
function love.Font.getDPIScale() end

--- Gets the descent of the Font. The descent spans the distance between the baseline and the lowest descending glyph in a typeface.
---@return number descent # The descent of the Font in pixels.
function love.Font.getDescent() end

--- Gets the filter mode for a font.
---@return FilterMode min # Filter mode used when minifying the font.
---@return FilterMode mag # Filter mode used when magnifying the font.
---@return number anisotropy # Maximum amount of anisotropic filtering used.
function love.Font.getFilter() end

--- Gets the height of the Font. The height of the font is the size including any spacing; the height which it will need.
---@return number height # The height of the Font in pixels.
function love.Font.getHeight() end

--- Gets the kerning between two characters in the Font. Kerning is normally handled automatically in love.graphics.print, Text objects, Font:getWidth, Font:getWrap, etc. This function is useful when stitching text together manually.
---@param leftchar string
---@param rightchar string
---@return number kerning # The kerning amount to add to the spacing between the two characters. May be negative.
function love.Font.getKerning(leftchar, rightchar) end

--- Gets the line height. This will be the value previously set by Font:setLineHeight, or 1.0 by default.
---@return number height # The current line height.
function love.Font.getLineHeight() end

--- Determines the maximum width (accounting for newlines) taken by the given string.
---@param text string
---@return number width # The width of the text.
function love.Font.getWidth(text) end

--- Gets formatting information for text, given a wrap limit. This function accounts for newlines correctly (i.e. '\n').
---@param text string
---@param wraplimit number
---@return number width # The maximum width of the wrapped text.
---@return table<string> wrappedtext # A sequence containing each line of text that was wrapped.
function love.Font.getWrap(text, wraplimit) end

--- Gets whether the Font can render a character or string.
---@param text string
---@return boolean hasglyph # Whether the font can render all the UTF-8 characters in the string.
function love.Font.hasGlyphs(text) end

--- Sets the fallback fonts. When the Font doesn't contain a glyph, it will substitute the glyph from the next subsequent fallback Fonts. This is akin to setting a 'font stack' in Cascading Style Sheets (CSS).
---@param fallbackfont1 any
---@param ... any
function love.Font.setFallbacks(fallbackfont1, ...) end

--- Sets the filter mode for a font.
---@param min any
---@param mag any
---@param anisotropy? number
function love.Font.setFilter(min, mag, anisotropy) end

--- Sets the line height. When rendering the font in lines the actual height will be determined by the line height multiplied by the height of the font. The default is 1.0.
---@param height number
function love.Font.setLineHeight(height) end
