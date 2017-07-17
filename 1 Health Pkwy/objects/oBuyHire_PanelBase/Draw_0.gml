/// @description draw panel based on panelColor

// Draw panel / color it
shader_set(shader_buyHire_panel);
	var aPanelFill = shader_get_uniform(shader_buyHire_panel, "panelFill");
	shader_set_uniform_f(aPanelFill, panelColor[0], panelColor[1], panelColor[2]);
	draw_self();
shader_reset();

draw_set_font(fnt_game);

// Draw Label
var col = draw_get_color();
draw_set_color(labelColor);
draw_text(x+15, y+3, label);
draw_set_color(col);

// Draw price
outlineText(x+127, y+3, price, iGame.moneyFg, iGame.moneyBg);