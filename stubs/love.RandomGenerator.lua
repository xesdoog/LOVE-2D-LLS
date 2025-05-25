---@meta

-- Module: love.RandomGenerator
love.RandomGenerator = {}
--- Gets the seed of the random number generator object. The seed is split into two numbers due to Lua's use of doubles for all number values - doubles can't accurately represent integer values above 2^53, but the seed value is an integer number in the range of 2^64 - 1.
---@return number low # Integer number representing the lower 32 bits of the RandomGenerator's 64 bit seed value.
---@return number high # Integer number representing the higher 32 bits of the RandomGenerator's 64 bit seed value.
function love.RandomGenerator.getSeed() end

--- Gets the current state of the random number generator. This returns an opaque string which is only useful for later use with RandomGenerator:setState in the same major version of LÖVE. This is different from RandomGenerator:getSeed in that getState gets the RandomGenerator's current state, whereas getSeed gets the previously set seed number.
---@return string state # The current state of the RandomGenerator object, represented as a string.
function love.RandomGenerator.getState() end

--- Generates a pseudo-random number in a platform independent manner.
---@return number number # The pseudo-random number.
function love.RandomGenerator.random() end

--- Get a normally distributed pseudo random number.
---@param stddev? number
---@param mean? number
---@return number number # Normally distributed random number with variance (stddev)² and the specified mean.
function love.RandomGenerator.randomNormal(stddev, mean) end

--- Sets the seed of the random number generator using the specified integer number.
---@param seed number
function love.RandomGenerator.setSeed(seed) end

--- Sets the current state of the random number generator. The value used as an argument for this function is an opaque string and should only originate from a previous call to RandomGenerator:getState in the same major version of LÖVE. This is different from RandomGenerator:setSeed in that setState directly sets the RandomGenerator's current implementation-dependent state, whereas setSeed gives it a new seed value.
---@param state string
function love.RandomGenerator.setState(state) end
