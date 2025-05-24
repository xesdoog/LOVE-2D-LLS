-- Module: love.image
love.image = {}
--- Determines whether a file can be loaded as CompressedImageData.
---@param filename string
---@return boolean compressed # Whether the file can be loaded as CompressedImageData or not.
function love.isCompressed(filename) end

--- Create a new CompressedImageData object from a compressed image file. LÖVE supports several compressed texture formats, enumerated in the CompressedImageFormat page.
---@param filename string
---@return CompressedImageData compressedImageData # The new CompressedImageData object.
function love.newCompressedData(filename) end

--- Creates a new ImageData object.
---@param width number
---@param height number
---@return ImageData imageData # The new blank ImageData object. Each pixel's color values, (including the alpha values!) will be set to zero.
function love.newImageData(width, height) end
