#version 130 core

in vec3 vertexPosition;
in vec3 vertexNormal;
in vec2 vertexTexCoord;

out vec3 position;
out vec3 normal;
out vec2 texCoord;

uniform mat4 modelView;
uniform mat3 modelViewNormal;
uniform mat4 mvp;

uniform float texCoordScale;

void main()
{
    texCoord = vertexTexCoord * texCoordScale;
    normal = normalize( modelViewNormal * vertexNormal );
    position = vec3( modelView * vec4( vertexPosition, 1.0 ) );

    gl_Position = mvp * vec4( vertexPosition, 1.0 );
}
