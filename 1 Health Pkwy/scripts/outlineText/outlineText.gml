/// @description draw text with an oultine
/// @param x
/// @param y
/// @param text
/// @param fgColor
/// @param bgColor;

var xx = argument0;
var yy = argument1;
var txt = argument2;
var fgColor = argument3;
var bgColor = argument4;

var oldColor = draw_get_color();
draw_set_color(bgColor);
for (var i = -1; i <= 1; i++)
 for (var j = -1; j <=1; j++)
	draw_text(xx+i, yy+j, txt);

draw_set_color(fgColor);
draw_text(xx, yy, txt);

draw_set_color(oldColor);