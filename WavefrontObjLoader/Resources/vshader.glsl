#ifdef GL_ES

// Set default precision to medium
precision mediump int;
precision mediump float;
#endif

uniform mat4 mvp_matrix;

//layout (location = 0) in vec3 in_Position;
attribute vec3 in_Position;

void main()
{
    // Calculate vertex position in screen space
    gl_Position = mvp_matrix * vec4(in_Position, 1.0);
}