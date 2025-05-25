---@meta

-- Module: love.image
love.image = {}
--- Determines whether a file can be loaded as CompressedImageData.
---@param filename string
---@return boolean compressed # Whether the file can be loaded as CompressedImageData or not.
function love.image.isCompressed(filename) end

--- Create a new CompressedImageData object from a compressed image file. LÖVE supports several compressed texture formats, enumerated in the CompressedImageFormat page.
---@param filename string
---@return CompressedImageData compressedImageData # The new CompressedImageData object.
function love.image.newCompressedData(filename) end

--- Creates a new ImageData object.
---@param width number
---@param height number
---@return ImageData imageData # The new blank ImageData object. Each pixel's color values, (including the alpha values!) will be set to zero.
function love.image.newImageData(width, height) end

--- Represents compressed image data designed to stay compressed in RAM. CompressedImageData encompasses standard compressed texture formats such as DXT1, DXT5, and BC5 / 3Dc. You can't draw CompressedImageData directly to the screen. See Image for that.
function love.image.CompressedImageData() end

--- Raw (decoded) image data. You can't draw ImageData directly to screen. See Image for that.
function love.image.ImageData() end
