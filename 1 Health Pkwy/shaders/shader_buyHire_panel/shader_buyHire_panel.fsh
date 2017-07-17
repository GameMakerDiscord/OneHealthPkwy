//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
uniform vec3 panelFill;

void main()
{
	vec4 c = texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (c.r == 1.0 && c.g == 1.0 && c.b == 1.0) {
		gl_FragColor.rgb = panelFill;
		gl_FragColor.a = 1.0;
	} else {
    gl_FragColor = c;
	}
}

