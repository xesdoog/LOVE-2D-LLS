---@meta

-- Module: love.Canvas
love.Canvas = {}
--- Generates mipmaps for the Canvas, based on the contents of the highest-resolution mipmap level. The Canvas must be created with mipmaps set to a MipmapMode other than 'none' for this function to work. It should only be called while the Canvas is not the active render target. If the mipmap mode is set to 'auto', this function is automatically called inside love.graphics.setCanvas when switching from this Canvas to another Canvas or to the main screen.
function love.Canvas.generateMipmaps() end

--- Gets the number of multisample antialiasing (MSAA) samples used when drawing to the Canvas. This may be different than the number used as an argument to love.graphics.newCanvas if the system running LÖVE doesn't support that number.
---@return number samples # The number of multisample antialiasing samples used by the canvas when drawing to it.
function love.Canvas.getMSAA() end

--- Gets the MipmapMode this Canvas was created with.
---@return MipmapMode mode # The mipmap mode this Canvas was created with.
function love.Canvas.getMipmapMode() end

--- Generates ImageData from the contents of the Canvas.
---@return ImageData data # The new ImageData made from the Canvas' contents.
function love.Canvas.newImageData() end

--- Render to the Canvas using a function. This is a shortcut to love.graphics.setCanvas: canvas:renderTo( func ) is the same as love.graphics.setCanvas( canvas ) func() love.graphics.setCanvas()
---@param func function
---@param ... any
function love.Canvas.renderTo(func, ...) end
