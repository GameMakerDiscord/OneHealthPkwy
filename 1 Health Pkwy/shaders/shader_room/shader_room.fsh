//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
uniform vec3 roomColor;

void main()
{
	vec4 c = texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (c.g == 0.0 && c.r + c.b == 2.0) {
		gl_FragColor.rgb = roomColor;
		gl_FragColor.a = 1.0;
	} else {
    gl_FragColor = c;
	}
}

