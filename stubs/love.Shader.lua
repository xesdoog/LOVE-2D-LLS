---@meta

-- Module: love.Shader
love.Shader = {}
--- Returns any warning and error messages from compiling the shader code. This can be used for debugging your shaders if there's anything the graphics hardware doesn't like.
---@return string warnings # Warning and error messages (if any).
function love.Shader.getWarnings() end

--- Gets whether a uniform / extern variable exists in the Shader. If a graphics driver's shader compiler determines that a uniform / extern variable doesn't affect the final output of the shader, it may optimize the variable out. This function will return false in that case.
---@param name string
---@return boolean hasuniform # Whether the uniform exists in the shader and affects its final output.
function love.Shader.hasUniform(name) end

--- Sends one or more values to a special (''uniform'') variable inside the shader. Uniform variables have to be marked using the ''uniform'' or ''extern'' keyword, e.g. uniform float time; // 'float' is the typical number type used in GLSL shaders. uniform float varsvec2 light_pos; uniform vec4 colors[4; The corresponding send calls would be shader:send('time', t) shader:send('vars',a,b) shader:send('light_pos', {light_x, light_y}) shader:send('colors', {r1, g1, b1, a1}, {r2, g2, b2, a2}, {r3, g3, b3, a3}, {r4, g4, b4, a4}) Uniform / extern variables are read-only in the shader code and remain constant until modified by a Shader:send call. Uniform variables can be accessed in both the Vertex and Pixel components of a shader, as long as the variable is declared in each.
---@param name string
---@param number number
---@param ... number
function love.Shader.send(name, number, ...) end

--- Sends one or more colors to a special (''extern'' / ''uniform'') vec3 or vec4 variable inside the shader. The color components must be in the range of 1. The colors are gamma-corrected if global gamma-correction is enabled. Extern variables must be marked using the ''extern'' keyword, e.g. extern vec4 Color; The corresponding sendColor call would be shader:sendColor('Color', {r, g, b, a}) Extern variables can be accessed in both the Vertex and Pixel stages of a shader, as long as the variable is declared in each. In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---@param name string
---@param color? table
---@param ... table
function love.Shader.sendColor(name, color, ...) end
