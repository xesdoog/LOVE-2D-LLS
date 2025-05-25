---@meta

-- Module: love.video
love.video = {}
--- Creates a new VideoStream. Currently only Ogg Theora video files are supported. VideoStreams can't draw videos, see love.graphics.newVideo for that.
---@param filename string
---@return VideoStream videostream # A new VideoStream.
function love.video.newVideoStream(filename) end

--- An object which decodes, streams, and controls Videos.
function love.video.VideoStream() end
