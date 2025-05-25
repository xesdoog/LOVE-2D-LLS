---@meta

-- Module: love.sound
love.sound = {}
--- Attempts to find a decoder for the encoded sound data in the specified file.
---@param file any
---@param buffer? number
---@return Decoder decoder # A new Decoder object.
function love.sound.newDecoder(file, buffer) end

--- Creates new SoundData from a filepath, File, or Decoder. It's also possible to create SoundData with a custom sample rate, channel and bit depth. The sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way.
---@param filename string
---@return SoundData soundData # A new SoundData object.
function love.sound.newSoundData(filename) end

--- An object which can gradually decode a sound file.
function love.sound.Decoder() end

--- Contains raw audio samples. You can not play SoundData back directly. You must wrap a Source object around it.
function love.sound.SoundData() end
