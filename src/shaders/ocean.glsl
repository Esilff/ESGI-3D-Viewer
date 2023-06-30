#pragma vertex
#version 120

attribute vec3 aPos;
attribute vec2 aUv;
attribute vec3 aNormal;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

varying vec2 vUv;

void main() {
    vUv = aUv;
    gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(aPos, 1);
}

#pragma fragment
#version 120

varying vec2 vUv;

uniform sampler2D texId;

void main() {
    //vec4 color = texture2D(texId, vUv);
    gl_FragColor = vec4(0,1,1,0);
}

