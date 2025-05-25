---@meta

-- Module: love.Channel
love.Channel = {}
--- Clears all the messages in the Channel queue.
function love.Channel.clear() end

--- Retrieves the value of a Channel message and removes it from the message queue. It waits until a message is in the queue then returns the message value.
---@return Variant value # The contents of the message.
function love.Channel.demand() end

--- Retrieves the number of messages in the thread Channel queue.
---@return number count # The number of messages in the queue.
function love.Channel.getCount() end

--- Gets whether a pushed value has been popped or otherwise removed from the Channel.
---@param id number
---@return boolean hasread # Whether the value represented by the id has been removed from the Channel via Channel:pop, Channel:demand, or Channel:clear.
function love.Channel.hasRead(id) end

--- Retrieves the value of a Channel message, but leaves it in the queue. It returns nil if there's no message in the queue.
---@return Variant value # The contents of the message.
function love.Channel.peek() end

--- Executes the specified function atomically with respect to this Channel. Calling multiple methods in a row on the same Channel is often useful. However if multiple Threads are calling this Channel's methods at the same time, the different calls on each Thread might end up interleaved (e.g. one or more of the second thread's calls may happen in between the first thread's calls.) This method avoids that issue by making sure the Thread calling the method has exclusive access to the Channel until the specified function has returned.
---@param func function
---@param ... any
---@return any ret1 # The first return value of the given function (if any.)
---@return any ... # Any other return values.
function love.Channel.performAtomic(func, ...) end

--- Retrieves the value of a Channel message and removes it from the message queue. It returns nil if there are no messages in the queue.
---@return Variant value # The contents of the message.
function love.Channel.pop() end

--- Send a message to the thread Channel. See Variant for the list of supported types.
---@param value any
---@return number id # Identifier which can be supplied to Channel:hasRead
function love.Channel.push(value) end

--- Send a message to the thread Channel and wait for a thread to accept it. See Variant for the list of supported types.
---@param value any
---@return boolean success # Whether the message was successfully supplied (always true).
function love.Channel.supply(value) end
