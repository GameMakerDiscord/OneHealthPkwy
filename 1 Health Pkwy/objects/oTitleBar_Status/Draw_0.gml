draw_self();
draw_set_font(fnt_game);

// Draw day
outlineText(x + 5, y + 2, "DAY:", iGame.titleFg, iGame.titleBg);
outlineText(x + 5 + string_width("DAY:") + 2, y + 2, "000", iGame.titleFg, iGame.titleBg);

// Draw money
draw_sprite(sIconDollar, 0, x + 45, y + 1);
outlineText(x + 52, y + 2, "000", iGame.moneyFg, iGame.moneyBg);
outlineText(x + 52 + string_width("000") + 2, y + 2, "000", iGame.moneyFg, iGame.moneyBg);