---@meta

-- Module: love.Texture
love.Texture = {}
--- Gets the DPI scale factor of the Texture. The DPI scale factor represents relative pixel density. A DPI scale factor of 2 means the texture has twice the pixel density in each dimension (4 times as many pixels in the same area) compared to a texture with a DPI scale factor of 1. For example, a texture with pixel dimensions of 100x100 with a DPI scale factor of 2 will be drawn as if it was 50x50. This is useful with high-dpi / retina displays to easily allow swapping out higher or lower pixel density Images and Canvases without needing any extra manual scaling logic.
---@return number dpiscale # The DPI scale factor of the Texture.
function love.Texture.getDPIScale() end

--- Gets the depth of a Volume Texture. Returns 1 for 2D, Cubemap, and Array textures.
---@return number depth # The depth of the volume Texture.
function love.Texture.getDepth() end

--- Gets the comparison mode used when sampling from a depth texture in a shader. Depth texture comparison modes are advanced low-level functionality typically used with shadow mapping in 3D.
---@return CompareMode compare # The comparison mode used when sampling from this texture in a shader, or nil if setDepthSampleMode has not been called on this Texture.
function love.Texture.getDepthSampleMode() end

--- Gets the width and height of the Texture.
---@return number width # The width of the Texture.
---@return number height # The height of the Texture.
function love.Texture.getDimensions() end

--- Gets the filter mode of the Texture.
---@return FilterMode min # Filter mode to use when minifying the texture (rendering it at a smaller size on-screen than its size in pixels).
---@return FilterMode mag # Filter mode to use when magnifying the texture (rendering it at a smaller size on-screen than its size in pixels).
---@return number anisotropy # Maximum amount of anisotropic filtering used.
function love.Texture.getFilter() end

--- Gets the pixel format of the Texture.
---@return PixelFormat format # The pixel format the Texture was created with.
function love.Texture.getFormat() end

--- Gets the height of the Texture.
---@return number height # The height of the Texture.
function love.Texture.getHeight() end

--- Gets the number of layers / slices in an Array Texture. Returns 1 for 2D, Cubemap, and Volume textures.
---@return number layers # The number of layers in the Array Texture.
function love.Texture.getLayerCount() end

--- Gets the number of mipmaps contained in the Texture. If the texture was not created with mipmaps, it will return 1.
---@return number mipmaps # The number of mipmaps in the Texture.
function love.Texture.getMipmapCount() end

--- Gets the mipmap filter mode for a Texture. Prior to 11.0 this method only worked on Images.
---@return FilterMode mode # The filter mode used in between mipmap levels. nil if mipmap filtering is not enabled.
---@return number sharpness # Value used to determine whether the image should use more or less detailed mipmap levels than normal when drawing.
function love.Texture.getMipmapFilter() end

--- Gets the width and height in pixels of the Texture. Texture:getDimensions gets the dimensions of the texture in units scaled by the texture's DPI scale factor, rather than pixels. Use getDimensions for calculations related to drawing the texture (calculating an origin offset, for example), and getPixelDimensions only when dealing specifically with pixels, for example when using Canvas:newImageData.
---@return number pixelwidth # The width of the Texture, in pixels.
---@return number pixelheight # The height of the Texture, in pixels.
function love.Texture.getPixelDimensions() end

--- Gets the height in pixels of the Texture. DPI scale factor, rather than pixels. Use getHeight for calculations related to drawing the texture (calculating an origin offset, for example), and getPixelHeight only when dealing specifically with pixels, for example when using Canvas:newImageData.
---@return number pixelheight # The height of the Texture, in pixels.
function love.Texture.getPixelHeight() end

--- Gets the width in pixels of the Texture. DPI scale factor, rather than pixels. Use getWidth for calculations related to drawing the texture (calculating an origin offset, for example), and getPixelWidth only when dealing specifically with pixels, for example when using Canvas:newImageData.
---@return number pixelwidth # The width of the Texture, in pixels.
function love.Texture.getPixelWidth() end

--- Gets the type of the Texture.
---@return TextureType texturetype # The type of the Texture.
function love.Texture.getTextureType() end

--- Gets the width of the Texture.
---@return number width # The width of the Texture.
function love.Texture.getWidth() end

--- Gets the wrapping properties of a Texture. This function returns the currently set horizontal and vertical wrapping modes for the texture.
---@return WrapMode horiz # Horizontal wrapping mode of the texture.
---@return WrapMode vert # Vertical wrapping mode of the texture.
---@return WrapMode depth # Wrapping mode for the z-axis of a Volume texture.
function love.Texture.getWrap() end

--- Gets whether the Texture can be drawn and sent to a Shader. Canvases created with stencil and/or depth PixelFormats are not readable by default, unless readable=true is specified in the settings table passed into love.graphics.newCanvas. Non-readable Canvases can still be rendered to.
---@return boolean readable # Whether the Texture is readable.
function love.Texture.isReadable() end

--- Sets the comparison mode used when sampling from a depth texture in a shader. Depth texture comparison modes are advanced low-level functionality typically used with shadow mapping in 3D. When using a depth texture with a comparison mode set in a shader, it must be declared as a sampler2DShadow and used in a GLSL 3 Shader. The result of accessing the texture in the shader will return a float between 0 and 1, proportional to the number of samples (up to 4 samples will be used if bilinear filtering is enabled) that passed the test set by the comparison operation. Depth texture comparison can only be used with readable depth-formatted Canvases.
---@param compare any
function love.Texture.setDepthSampleMode(compare) end

--- Sets the filter mode of the Texture.
---@param min any
---@param mag? any
---@param anisotropy? number
function love.Texture.setFilter(min, mag, anisotropy) end

--- Sets the mipmap filter mode for a Texture. Prior to 11.0 this method only worked on Images. Mipmapping is useful when drawing a texture at a reduced scale. It can improve performance and reduce aliasing issues. In created with the mipmaps flag enabled for the mipmap filter to have any effect. In versions prior to 0.10.0 it's best to call this method directly after creating the image with love.graphics.newImage, to avoid bugs in certain graphics drivers. Due to hardware restrictions and driver bugs, in versions prior to 0.10.0 images that weren't loaded from a CompressedData must have power-of-two dimensions (64x64, 512x256, etc.) to use mipmaps.
---@param filtermode any
---@param sharpness? number
function love.Texture.setMipmapFilter(filtermode, sharpness) end

--- Sets the wrapping properties of a Texture. This function sets the way a Texture is repeated when it is drawn with a Quad that is larger than the texture's extent, or when a custom Shader is used which uses texture coordinates outside of [0, 1]. A texture may be clamped or set to repeat in both horizontal and vertical directions. Clamped textures appear only once (with the edges of the texture stretching to fill the extent of the Quad), whereas repeated ones repeat as many times as there is room in the Quad.
---@param horiz any
---@param vert? any
---@param depth? any
function love.Texture.setWrap(horiz, vert, depth) end
