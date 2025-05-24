-- Module: love.Quad
love.Quad = {}
--- Gets reference texture dimensions initially specified in love.graphics.newQuad.
---@return number sw # The Texture width used by the Quad.
---@return number sh # The Texture height used by the Quad.
function love.getTextureDimensions() end

--- Gets the current viewport of this Quad.
---@return number x # The top-left corner along the x-axis.
---@return number y # The top-left corner along the y-axis.
---@return number w # The width of the viewport.
---@return number h # The height of the viewport.
function love.getViewport() end

--- Sets the texture coordinates according to a viewport.
---@param x number
---@param y number
---@param w number
---@param h number
---@param sw? number
---@param sh? number
function love.setViewport(x, y, w, h, sw, sh) end
