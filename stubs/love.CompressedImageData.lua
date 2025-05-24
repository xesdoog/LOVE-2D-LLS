-- Module: love.CompressedImageData
love.CompressedImageData = {}
--- Gets the width and height of the CompressedImageData.
---@return number width # The width of the CompressedImageData.
---@return number height # The height of the CompressedImageData.
function love.getDimensions() end

--- Gets the format of the CompressedImageData.
---@return CompressedImageFormat format # The format of the CompressedImageData.
function love.getFormat() end

--- Gets the height of the CompressedImageData.
---@return number height # The height of the CompressedImageData.
function love.getHeight() end

--- Gets the number of mipmap levels in the CompressedImageData. The base mipmap level (original image) is included in the count.
---@return number mipmaps # The number of mipmap levels stored in the CompressedImageData.
function love.getMipmapCount() end

--- Gets the width of the CompressedImageData.
---@return number width # The width of the CompressedImageData.
function love.getWidth() end
