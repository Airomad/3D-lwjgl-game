#version 140

in vec3 position ;
in vec2 textureCoords ;
in vec3 normal ;

out vec2 pass_textureCoords ;

uniform mat4 transformationMatrix ;
uniform mat4 projectionMatrix ;
uniform mat4 viewMatrix ;

void main( void )
{
	vec4 worldPosition = transformationMatrix * vec4( position, 1.0 ) ;
	vec4 positionRelativeToCamera = viewMatrix * worldPosition ;
	gl_Position = projectionMatrix * positionRelativeToCamera ;
	pass_textureCoords = (textureCoords) ;
}
