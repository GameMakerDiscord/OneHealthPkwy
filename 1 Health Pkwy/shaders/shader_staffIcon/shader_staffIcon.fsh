//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
uniform vec3 iconColor;	
void main()
{
    vec4 c = texture2D( gm_BaseTexture, v_vTexcoord );
		
		if (c.r == 1.0 && c.g == 1.0 && c.b == 1.0) {
			gl_FragColor = vec4(iconColor, 1.0);
		} else {
			gl_FragColor = c;
		}
}
