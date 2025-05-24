-- Module: love.Mesh
love.Mesh = {}
--- Attaches a vertex attribute from a different Mesh onto this Mesh, for use when drawing. This can be used to share vertex attribute data between several different Meshes.
---@param name string
---@param mesh Mesh
function love.attachAttribute(name, mesh) end

--- Removes a previously attached vertex attribute from this Mesh.
---@param name string
---@return boolean success # Whether the attribute was successfully detached.
function love.detachAttribute(name) end

--- Immediately sends all modified vertex data in the Mesh to the graphics card. Normally it isn't necessary to call this method as love.graphics.draw(mesh, ...) will do it automatically if needed, but explicitly using **Mesh:flush** gives more control over when the work happens. If this method is used, it generally shouldn't be called more than once (at most) between love.graphics.draw(mesh, ...) calls.
function love.flush() end

--- Gets the mode used when drawing the Mesh.
---@return MeshDrawMode mode # The mode used when drawing the Mesh.
function love.getDrawMode() end

--- Gets the range of vertices used when drawing the Mesh.
---@return number min # The index of the first vertex used when drawing, or the index of the first value in the vertex map used if one is set for this Mesh.
---@return number max # The index of the last vertex used when drawing, or the index of the last value in the vertex map used if one is set for this Mesh.
function love.getDrawRange() end

--- Gets the texture (Image or Canvas) used when drawing the Mesh.
---@return Texture texture # The Image or Canvas to texture the Mesh with when drawing, or nil if none is set.
function love.getTexture() end

--- Gets the properties of a vertex in the Mesh. In versions prior to 11.0, color and byte component values were within the range of 0 to 255 instead of 0 to 1.
---@param index number
---@return number attributecomponent # The first component of the first vertex attribute in the specified vertex.
---@return number ... # Additional components of all vertex attributes in the specified vertex.
function love.getVertex(index) end

--- Gets the properties of a specific attribute within a vertex in the Mesh. Meshes without a custom vertex format specified in love.graphics.newMesh have position as their first attribute, texture coordinates as their second attribute, and color as their third attribute.
---@param vertexindex number
---@param attributeindex number
---@return number value1 # The value of the first component of the attribute.
---@return number value2 # The value of the second component of the attribute.
---@return number ... # Any additional vertex attribute components.
function love.getVertexAttribute(vertexindex, attributeindex) end

--- Gets the total number of vertices in the Mesh.
---@return number count # The total number of vertices in the mesh.
function love.getVertexCount() end

--- Gets the vertex format that the Mesh was created with.
---@return table format # The vertex format of the Mesh, which is a table containing tables for each vertex attribute the Mesh was created with, in the form of {attribute, ...}.
function love.getVertexFormat() end

--- Gets the vertex map for the Mesh. The vertex map describes the order in which the vertices are used when the Mesh is drawn. The vertices, vertex map, and mesh draw mode work together to determine what exactly is displayed on the screen. If no vertex map has been set previously via Mesh:setVertexMap, then this function will return nil in LÖVE 0.10.0+, or an empty table in 0.9.2 and older.
---@return table<number> map # A table containing the list of vertex indices used when drawing.
function love.getVertexMap() end

--- Gets whether a specific vertex attribute in the Mesh is enabled. Vertex data from disabled attributes is not used when drawing the Mesh.
---@param name string
---@return boolean enabled # Whether the vertex attribute is used when drawing this Mesh.
function love.isAttributeEnabled(name) end

--- Enables or disables a specific vertex attribute in the Mesh. Vertex data from disabled attributes is not used when drawing the Mesh.
---@param name string
---@param enable boolean
function love.setAttributeEnabled(name, enable) end

--- Sets the mode used when drawing the Mesh.
---@param mode MeshDrawMode
function love.setDrawMode(mode) end

--- Restricts the drawn vertices of the Mesh to a subset of the total.
---@param start number
---@param count number
function love.setDrawRange(start, count) end

--- Sets the texture (Image or Canvas) used when drawing the Mesh.
---@param texture Texture
function love.setTexture(texture) end

--- Sets the properties of a vertex in the Mesh. In versions prior to 11.0, color and byte component values were within the range of 0 to 255 instead of 0 to 1.
---@param index number
---@param attributecomponent number
---@param ... number
function love.setVertex(index, attributecomponent, ...) end

--- Sets the properties of a specific attribute within a vertex in the Mesh. Meshes without a custom vertex format specified in love.graphics.newMesh have position as their first attribute, texture coordinates as their second attribute, and color as their third attribute.
---@param vertexindex number
---@param attributeindex number
---@param value1 number
---@param value2 number
---@param ... number
function love.setVertexAttribute(vertexindex, attributeindex, value1, value2, ...) end

--- Sets the vertex map for the Mesh. The vertex map describes the order in which the vertices are used when the Mesh is drawn. The vertices, vertex map, and mesh draw mode work together to determine what exactly is displayed on the screen. The vertex map allows you to re-order or reuse vertices when drawing without changing the actual vertex parameters or duplicating vertices. It is especially useful when combined with different Mesh Draw Modes.
---@param map table
function love.setVertexMap(map) end

--- Replaces a range of vertices in the Mesh with new ones. The total number of vertices in a Mesh cannot be changed after it has been created. This is often more efficient than calling Mesh:setVertex in a loop.
---@param vertices table
---@param startvertex? number
---@param count? number
function love.setVertices(vertices, startvertex, count) end
