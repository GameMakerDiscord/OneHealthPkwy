/// @description draw panel / icon
if (iTable.hoverTable && dragState == DragState.Dragging && iBuyHireWindow.dragging == id) {
	
	if (iTable.roomSnapX >= 0 && iTable.roomSnapY >= 0) {
		var lx = x;
		var ly = y;
		
		x = iTable.roomSnapX; y = iTable.roomSnapY;
		
		game_room_draw(roomType);
		
		x = lx; y = ly;
	} else {
		var roomDef = iRooms.roomDefs[roomType];
		var roomSprites = iRooms.roomSprites;
	
		var roomSprite = roomSprites[roomDef[RoomDef.Size]];
	
		var xo = ((mouse_x - x) / sprite_width);
		var xxo = floor(xo * sprite_get_width(roomSprite));
		var xoffset = (mouse_x - x) - xxo;
	
		game_room_draw(roomType, floor(xoffset));
	}
} else {
	event_inherited();


	var roomDef = iRooms.roomDefs[roomType];
	var roomCat = roomDef[RoomDef.Category];

	var activeFill     = iRooms.roomColors[roomCat, RoomColor.ActiveFill];
	var inactiveFill   = iRooms.roomColors[roomCat, RoomColor.InactiveFill];
	var inactiveBorder = iRooms.roomColors[roomCat, RoomColor.InactiveBorder];

	// Draw size icon
	shader_set(shader_buyHire_sizeIcon);
		var aActiveFill     = shader_get_uniform(shader_buyHire_sizeIcon, "activeFill");
		var aInactiveFill   = shader_get_uniform(shader_buyHire_sizeIcon, "inactiveFill");
		var aInactiveBorder = shader_get_uniform(shader_buyHire_sizeIcon, "inactiveBorder");
	
		shader_set_uniform_f(aActiveFill,     activeFill[0],     activeFill[1],     activeFill[2]);
		shader_set_uniform_f(aInactiveFill,   inactiveFill[0],   inactiveFill[1],   inactiveFill[2]);
		shader_set_uniform_f(aInactiveBorder, inactiveBorder[0], inactiveBorder[1], inactiveBorder[2]);
	
		draw_sprite(sizeIcon, 0, x + 2, y + 2);
	shader_reset();
}