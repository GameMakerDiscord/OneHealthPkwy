/// @description draw panel / icon
var lx=x; var ly=y; var ls=sprite_index;
if (iTable.hoverTable && dragState == DragState.Dragging && iBuyHireWindow.dragging == id) {
	var roomCat = staffDef[Staff.Category];
	var hoverRoom = instance_position(mouse_x, mouse_y, oRoom);
	sprite_index = iconSprite;
	x = mouse_x - sprite_get_width(iconSprite)*0.5;
	y = mouse_y;
	
	if (hoverRoom != noone && hoverRoom.staff == noone) {
		var roomDef = iRooms.roomDefs[hoverRoom.roomType];
		if (roomDef[RoomDef.Category] == roomCat) {
			// snap the icon
			x = hoverRoom.x + 2;
			y = hoverRoom.y + 2;
		}
	}
	
	staff_icon_draw(roomCat);	
	
} else {
	event_inherited();

	// Draw doctor icon
	draw_sprite(face, 0, x+1, y+2);
	draw_sprite(eyes, 0, x+1, y+2);
}
x=lx; y=ly; sprite_index=ls;