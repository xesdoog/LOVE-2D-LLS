-- Module: love.SpriteBatch
love.SpriteBatch = {}
--- Adds a sprite to the batch. Sprites are drawn in the order they are added.
---@param x number
---@param y number
---@param r? number
---@param sx? number
---@param sy? number
---@param ox? number
---@param oy? number
---@param kx? number
---@param ky? number
---@return number id # An identifier for the added sprite.
function love.add(x, y, r, sx, sy, ox, oy, kx, ky) end

--- Adds a sprite to a batch created with an Array Texture.
---@param layerindex number
---@param x? number
---@param y? number
---@param r? number
---@param sx? number
---@param sy? number
---@param ox? number
---@param oy? number
---@param kx? number
---@param ky? number
---@return number spriteindex # The index of the added sprite, for use with SpriteBatch:set or SpriteBatch:setLayer.
function love.addLayer(layerindex, x, y, r, sx, sy, ox, oy, kx, ky) end

--- Attaches a per-vertex attribute from a Mesh onto this SpriteBatch, for use when drawing. This can be combined with a Shader to augment a SpriteBatch with per-vertex or additional per-sprite information instead of just having per-sprite colors. Each sprite in a SpriteBatch has 4 vertices in the following order: top-left, bottom-left, top-right, bottom-right. The index returned by SpriteBatch:add (and used by SpriteBatch:set) can used to determine the first vertex of a specific sprite with the formula 1 + 4 * ( id - 1 ).
---@param name string
---@param mesh Mesh
function love.attachAttribute(name, mesh) end

--- Removes all sprites from the buffer.
function love.clear() end

--- Immediately sends all new and modified sprite data in the batch to the graphics card. Normally it isn't necessary to call this method as love.graphics.draw(spritebatch, ...) will do it automatically if needed, but explicitly using SpriteBatch:flush gives more control over when the work happens. If this method is used, it generally shouldn't be called more than once (at most) between love.graphics.draw(spritebatch, ...) calls.
function love.flush() end

--- Gets the maximum number of sprites the SpriteBatch can hold.
---@return number size # The maximum number of sprites the batch can hold.
function love.getBufferSize() end

--- Gets the color that will be used for the next add and set operations. If no color has been set with SpriteBatch:setColor or the current SpriteBatch color has been cleared, this method will return nil. In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---@return number r # The red component (0-1).
---@return number g # The green component (0-1).
---@return number b # The blue component (0-1).
---@return number a # The alpha component (0-1).
function love.getColor() end

--- Gets the number of sprites currently in the SpriteBatch.
---@return number count # The number of sprites currently in the batch.
function love.getCount() end

--- Gets the texture (Image or Canvas) used by the SpriteBatch.
---@return Texture texture # The Image or Canvas used by the SpriteBatch.
function love.getTexture() end

--- Changes a sprite in the batch. This requires the sprite index returned by SpriteBatch:add or SpriteBatch:addLayer.
---@param spriteindex number
---@param x number
---@param y number
---@param r? number
---@param sx? number
---@param sy? number
---@param ox? number
---@param oy? number
---@param kx? number
---@param ky? number
function love.set(spriteindex, x, y, r, sx, sy, ox, oy, kx, ky) end

--- Sets the color that will be used for the next add and set operations. Calling the function without arguments will disable all per-sprite colors for the SpriteBatch. In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1. In version 0.9.2 and older, the global color set with love.graphics.setColor will not work on the SpriteBatch if any of the sprites has its own color.
---@param r number
---@param g number
---@param b number
---@param a? number
function love.setColor(r, g, b, a) end

--- Restricts the drawn sprites in the SpriteBatch to a subset of the total.
---@param start number
---@param count number
function love.setDrawRange(start, count) end

--- Changes a sprite previously added with add or addLayer, in a batch created with an Array Texture.
---@param spriteindex number
---@param layerindex number
---@param x? number
---@param y? number
---@param r? number
---@param sx? number
---@param sy? number
---@param ox? number
---@param oy? number
---@param kx? number
---@param ky? number
function love.setLayer(spriteindex, layerindex, x, y, r, sx, sy, ox, oy, kx, ky) end

--- Sets the texture (Image or Canvas) used for the sprites in the batch, when drawing.
---@param texture Texture
function love.setTexture(texture) end
