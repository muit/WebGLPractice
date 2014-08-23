attribute highp vec3 VertexPosition;
attribute highp vec2 TextureCoord;

uniform highp mat4 TransformationMatrix;
uniform highp mat4 PerspectiveMatrix;

varying highp vec2 vTextureCoord;

void main(void){
    gl_position = PerspectiveMatrix * TransformationMatrix * vec4(VertexPosition, 1.0);
    vTextureCoord = TextureCoord;
}