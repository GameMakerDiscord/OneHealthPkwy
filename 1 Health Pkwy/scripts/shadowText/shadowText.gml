/// @desc Draw text with a shadow
/// @param0 xPos
/// @param1 yPos
/// @param2 text
/// @param3 fgColor
/// @param4 bgColor
/// @param5 (opt)xoffset=1
/// @param6 (opt)yoffset=1

var xx = argument[0];
var yy = argument[1];
var txt = argument[2];
var fgColor = argument[3];
var bgColor = argument[4];
var xxoffset = 1;
var yyoffset = 1;
if (argument_count > 5) {
	xxoffset = argument[5];
	if (argument_count > 6) {
		yyoffset = argument[6];
	}
}

var oldColor = draw_get_color();
draw_set_color(bgColor);
draw_text(xx+xxoffset, yy+yyoffset, txt);

draw_set_color(fgColor);
draw_text(xx, yy, txt);

draw_set_color(oldColor);