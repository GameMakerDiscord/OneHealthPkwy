draw_self();

if (image_index == 0)
	shadowText(x+5, y+1, "END TURN", fgColor, bgColor, 0);
else {
	var col = draw_get_color();
	draw_set_color(bgColor);
	draw_text(x+6, y+2, "END TURN");
	draw_set_color(col);
}