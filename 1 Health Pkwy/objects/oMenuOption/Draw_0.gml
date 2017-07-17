draw_self();

var textx = x + ((sprite_width - string_width(label)) * 0.5);

draw_set_font(fnt_game);
if (image_index == 1) {
	var col = draw_get_color();
	draw_set_color(pressedColor);
	draw_text(textx + 1, y + 2, label);
	draw_set_color(col);
} else {
	outlineText(textx, y + 2, label, labelFgColor, labelBgColor);
}