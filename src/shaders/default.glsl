#pragma vertex

#version 120

attribute vec3 aPos;
varying vec3 vPos;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

void main() {
    gl_Position = vec4(aPos, 1) * modelMatrix * viewMatrix * projectionMatrix;
}

#pragma fragment
#version 120
varying vec3 vPos;

void main() {
    gl_FragColor = vec4(vPos, 1);
}