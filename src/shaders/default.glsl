#pragma vertex

#version 120

attribute vec3 aPos;
attribute vec2 aUv;
attribute vec3 aNormal;

varying vec3 vPos;
varying vec2 vUv;
varying vec3 vNormal;

uniform mat4 rotMatrix;
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;


void main() {
    vPos = aPos;
    vUv = aUv;
    vNormal = mat3(rotMatrix) * aNormal;
    gl_Position =  projectionMatrix * viewMatrix * modelMatrix * vec4(aPos, 1);
}

#pragma fragment
#version 120
varying vec3 vPos;
varying vec2 vUv;
varying vec3 vNormal;
uniform sampler2D texId;
uniform vec3 uLight;

float diffuseLambert(vec3 normal, vec3 light) {
    return max(dot(normal, light), 0.0);
}

void main() {
    vec4 color = texture2D(texId, vUv);
    vec3 N = normalize(vNormal);
    vec3 diffuse = color.rgb * diffuseLambert(N, -uLight);
    gl_FragColor =vec4(diffuse,1.0);
}