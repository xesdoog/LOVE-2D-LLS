-- Module: love.ImageData
love.ImageData = {}
--- Encodes the ImageData and optionally writes it to the save directory.
---@param format ImageFormat
---@param filename? string
---@return FileData filedata # The encoded image as a new FileData object.
function love.encode(format, filename) end

--- Gets the width and height of the ImageData in pixels.
---@return number width # The width of the ImageData in pixels.
---@return number height # The height of the ImageData in pixels.
function love.getDimensions() end

--- Gets the height of the ImageData in pixels.
---@return number height # The height of the ImageData in pixels.
function love.getHeight() end

--- Gets the color of a pixel at a specific position in the image. Valid x and y values start at 0 and go up to image width and height minus 1. Non-integer values are floored. In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---@param x number
---@param y number
---@return number r # The red component (0-1).
---@return number g # The green component (0-1).
---@return number b # The blue component (0-1).
---@return number a # The alpha component (0-1).
function love.getPixel(x, y) end

--- Gets the width of the ImageData in pixels.
---@return number width # The width of the ImageData in pixels.
function love.getWidth() end

--- Transform an image by applying a function to every pixel. This function is a higher-order function. It takes another function as a parameter, and calls it once for each pixel in the ImageData. The passed function is called with six parameters for each pixel in turn. The parameters are numbers that represent the x and y coordinates of the pixel and its red, green, blue and alpha values. The function should return the new red, green, blue, and alpha values for that pixel. function pixelFunction(x, y, r, g, b, a) -- template for defining your own pixel mapping function -- perform computations giving the new values for r, g, b and a -- ... return r, g, b, a end In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---@param pixelFunction function
---@param x? number
---@param y? number
---@param width? number
---@param height? number
function love.mapPixel(pixelFunction, x, y, width, height) end

--- Paste into ImageData from another source ImageData.
---@param source ImageData
---@param dx number
---@param dy number
---@param sx number
---@param sy number
---@param sw number
---@param sh number
function love.paste(source, dx, dy, sx, sy, sw, sh) end

--- Sets the color of a pixel at a specific position in the image. Valid x and y values start at 0 and go up to image width and height minus 1. In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---@param x number
---@param y number
---@param r number
---@param g number
---@param b number
---@param a number
function love.setPixel(x, y, r, g, b, a) end

--- Gets the pixel format of the ImageData.
---@return PixelFormat format # The pixel format the ImageData was created with.
function love.getFormat() end
