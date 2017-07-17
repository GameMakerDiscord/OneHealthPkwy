/// @param color
var col = argument[0];
if (argument_count > 1) {
	var a = argument[1];
	a[@0] = color_get_red(col)/255;
	a[@1] = color_get_green(col)/255;
	a[@2] = color_get_blue(col)/255;
} else
	return [	
		color_get_red(col)/255,
		color_get_green(col)/255,
		color_get_blue(col)/255,
	];
