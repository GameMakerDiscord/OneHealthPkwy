//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColor;

uniform vec3 activeFill;
uniform vec3 inactiveFill;
uniform vec3 inactiveBorder;

void main()
{
	vec4 c = texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (c.b == 0.0) {
		gl_FragColor.rgb = inactiveBorder;
	} else if (c.b == 1.0) {
		if (c.r == 1.0) {
			gl_FragColor.rgb = activeFill;
		} else {
			gl_FragColor.rgb = inactiveFill;
		}
	} else {
    gl_FragColor = c; 
	}

	gl_FragColor.a = 1.0;
}

