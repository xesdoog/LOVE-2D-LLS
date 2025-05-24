-- Module: love.Thread
love.Thread = {}
--- Retrieves the error string from the thread if it produced an error.
---@return string err # The error message, or nil if the Thread has not caused an error.
function love.getError() end

--- Returns whether the thread is currently running. Threads which are not running can be (re)started with Thread:start.
---@return boolean value # True if the thread is running, false otherwise.
function love.isRunning() end

--- Starts the thread. Beginning with version 0.9.0, threads can be restarted after they have completed their execution.
function love.start() end

--- Wait for a thread to finish. This call will block until the thread finishes.
function love.wait() end
