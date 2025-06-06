---@meta

-- Module: love.math
love.math = {}
--- Converts a color from 0..255 to 0..1 range.
---@param rb number
---@param gb number
---@param bb number
---@param ab? number
---@return number r # Red color component in 0..1 range.
---@return number g # Green color component in 0..1 range.
---@return number b # Blue color component in 0..1 range.
---@return number a # Alpha color component in 0..1 range or nil if alpha is not specified.
function love.math.colorFromBytes(rb, gb, bb, ab) end

--- Converts a color from 0..1 to 0..255 range.
---@param r number
---@param g number
---@param b number
---@param a? number
---@return number rb # Red color component in 0..255 range.
---@return number gb # Green color component in 0..255 range.
---@return number bb # Blue color component in 0..255 range.
---@return number ab # Alpha color component in 0..255 range or nil if alpha is not specified.
function love.math.colorToBytes(r, g, b, a) end

--- Converts a color from gamma-space (sRGB) to linear-space (RGB). This is useful when doing gamma-correct rendering and you need to do math in linear RGB in the few cases where LÖVE doesn't handle conversions automatically. Read more about gamma-correct rendering here, here, and here. In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---@param r number
---@param g number
---@param b number
---@return number lr # The red channel of the converted color in linear RGB space.
---@return number lg # The green channel of the converted color in linear RGB space.
---@return number lb # The blue channel of the converted color in linear RGB space.
function love.math.gammaToLinear(r, g, b) end

--- Gets the seed of the random number generator. The seed is split into two numbers due to Lua's use of doubles for all number values - doubles can't accurately represent integer values above 2^53, but the seed can be an integer value up to 2^64.
---@return number low # Integer number representing the lower 32 bits of the random number generator's 64 bit seed value.
---@return number high # Integer number representing the higher 32 bits of the random number generator's 64 bit seed value.
function love.math.getRandomSeed() end

--- Gets the current state of the random number generator. This returns an opaque implementation-dependent string which is only useful for later use with love.math.setRandomState or RandomGenerator:setState. This is different from love.math.getRandomSeed in that getRandomState gets the random number generator's current state, whereas getRandomSeed gets the previously set seed number.
---@return string state # The current state of the random number generator, represented as a string.
function love.math.getRandomState() end

--- Checks whether a polygon is convex. PolygonShapes in love.physics, some forms of Meshes, and polygons drawn with love.graphics.polygon must be simple convex polygons.
---@param vertices table
---@return boolean convex # Whether the given polygon is convex.
function love.math.isConvex(vertices) end

--- Converts a color from linear-space (RGB) to gamma-space (sRGB). This is useful when storing linear RGB color values in an image, because the linear RGB color space has less precision than sRGB for dark colors, which can result in noticeable color banding when drawing. In general, colors chosen based on what they look like on-screen are already in gamma-space and should not be double-converted. Colors calculated using math are often in the linear RGB space. Read more about gamma-correct rendering here, here, and here. In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---@param lr number
---@param lg number
---@param lb number
---@return number cr # The red channel of the converted color in gamma sRGB space.
---@return number cg # The green channel of the converted color in gamma sRGB space.
---@return number cb # The blue channel of the converted color in gamma sRGB space.
function love.math.linearToGamma(lr, lg, lb) end

--- Creates a new BezierCurve object. The number of vertices in the control polygon determines the degree of the curve, e.g. three vertices define a quadratic (degree 2) Bézier curve, four vertices define a cubic (degree 3) Bézier curve, etc.
---@param vertices table
---@return BezierCurve curve # A Bézier curve object.
function love.math.newBezierCurve(vertices) end

--- Creates a new RandomGenerator object which is completely independent of other RandomGenerator objects and random functions.
---@return RandomGenerator rng # The new Random Number Generator object.
function love.math.newRandomGenerator() end

--- Creates a new Transform object.
---@return Transform transform # The new Transform object.
function love.math.newTransform() end

--- Generates a Simplex or Perlin noise value in 1-4 dimensions. The return value will always be the same, given the same arguments. Simplex noise is closely related to Perlin noise. It is widely used for procedural content generation. There are many webpages which discuss Perlin and Simplex noise in detail.
---@param x number
---@return number value # The noise value in the range of 1.
function love.math.noise(x) end

--- Generates a pseudo-random number in a platform independent manner. The default love.run seeds this function at startup, so you generally don't need to seed it yourself.
---@return number number # The pseudo-random number.
function love.math.random() end

--- Get a normally distributed pseudo random number.
---@param stddev? number
---@param mean? number
---@return number number # Normally distributed random number with variance (stddev)² and the specified mean.
function love.math.randomNormal(stddev, mean) end

--- Sets the seed of the random number generator using the specified integer number. This is called internally at startup, so you generally don't need to call it yourself.
---@param seed number
function love.math.setRandomSeed(seed) end

--- Sets the current state of the random number generator. The value used as an argument for this function is an opaque implementation-dependent string and should only originate from a previous call to love.math.getRandomState. This is different from love.math.setRandomSeed in that setRandomState directly sets the random number generator's current implementation-dependent state, whereas setRandomSeed gives it a new seed value.
---@param state string
function love.math.setRandomState(state) end

--- Decomposes a simple convex or concave polygon into triangles.
---@param polygon table
---@return table triangles # List of triangles the polygon is composed of, in the form of {{x1, y1, x2, y2, x3, y3}, {x1, y1, x2, y2, x3, y3}, ...}.
function love.math.triangulate(polygon) end

--- A Bézier curve object that can evaluate and render Bézier curves of arbitrary degree. For more information on Bézier curves check this great article on Wikipedia.
function love.math.BezierCurve() end

--- A random number generation object which has its own random state.
function love.math.RandomGenerator() end

--- Object containing a coordinate system transformation. The love.graphics module has several functions and function variants which accept Transform objects.
function love.math.Transform() end
