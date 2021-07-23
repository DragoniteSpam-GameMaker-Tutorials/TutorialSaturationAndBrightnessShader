varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float uniform_sat;
uniform float uniform_val;

vec3 toHSV(vec3 color) {
    return color;
}

vec3 toRGB(vec3 color) {
    return color;
}

vec3 adjustSaturationAndValue(vec3 color) {
    vec3 hsv = toHSV(color);
    
    
    
    return toRGB(hsv);
}

void main() {
    gl_FragColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor.rgb = adjustSaturationAndValue(gl_FragColor.rgb);
}