/// @desc draw a room of the given type at this instance's x,y
/// @param roomType
/// @param (opt)xoffset
/// @param (opt)yoffset
var _roomType = argument[0];
var _xoffset = argument_count > 1 ? argument[1] : 0;
var _yoffset = argument_count > 2 ? argument[2] : 0;

if (_roomType == RoomType.Invalid) 
	return; // maybe draw a white room
	
var roomDef  = iRooms.roomDefs[_roomType];
var roomCat  = roomDef[RoomDef.Category];
var roomSize = roomDef[RoomDef.Size];
var label    = roomDef[RoomDef.Label];

var roomSprite  = iRooms.roomSprites[roomSize];
var orientation = iRooms.roomText[roomSize];

var roomColor   = iRooms.roomColors[roomCat, RoomColor.Room];
var labelColor  = iRooms.roomColors[roomCat, RoomColor.Label];

var xx = x + _xoffset;
var yy = y + _yoffset;

// Draw room piece
shader_set(shader_room);
	var aRoomColor = shader_get_uniform(shader_room, "roomColor");
	shader_set_uniform_f(aRoomColor, roomColor[0], roomColor[1], roomColor[2]);
	draw_sprite(roomSprite, 0, xx, yy);
shader_reset();

// Draw the room label
var col = draw_get_color();
draw_set_font(fnt_game);
draw_set_color(labelColor);

if (orientation == RoomTextOrientation.Horizontal) { 
	var textX = xx + floor((sprite_get_width(roomSprite) - string_width(label)) * 0.5);
  var textY = yy + sprite_get_height(roomSprite) - 9;
	
	draw_text(textX, textY, label);
} else {
}

draw_set_color(col);