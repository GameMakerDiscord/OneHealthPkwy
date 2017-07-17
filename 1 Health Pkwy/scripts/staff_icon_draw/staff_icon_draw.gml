/// @desc draw staff icon of the given type at this instance's x,y
/// @param roomCat
/// @param (opt)xoffset
/// @param (opt)yoffset
var _roomCat = argument[0];

var xx = x + (argument_count > 1 ? argument[1] : 0);
var yy = y + (argument_count > 2 ? argument[2] : 0);

var iconColor = iRooms.roomColors[_roomCat, RoomColor.BHFill];

shader_set(shader_staffIcon);
	var aIconColor = shader_get_uniform(shader_staffIcon, "iconColor");
	shader_set_uniform_f(aIconColor, iconColor[0], iconColor[1], iconColor[2]);
	draw_sprite(sprite_index, 0, xx, yy);
shader_reset();

// Draw doctor icon
draw_sprite(face, 0, xx+2, yy+2);
draw_sprite(eyes, 0, xx+2, yy+2);

