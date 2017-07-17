//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColor;

uniform vec3 statusColor;

void main()
{
	vec4 c = texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (c.r == c.b && c.b == c.g && c.g == 1.0) {
		gl_FragColor.rgb = statusColor;
	} else {
		gl_FragColor = c;
	}

	gl_FragColor.a = 1.0;
}

