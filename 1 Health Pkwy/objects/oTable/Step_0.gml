/// @description Check what time to snap to if we're hovering table and holding a building
roomSnapX = -1;
roomSnapY = -1;
if (hoverTable && iBuyHireWindow.dragging != noone) {
	switch(iBuyHireWindow.currentMode) {
		case BuyHireMode.Buy: {
			// find out if its legal placement, and snap if it is.
			var roomDef = iRooms.roomDefs[iBuyHireWindow.dragging.roomType];
			var rsh = iRooms.roomShapes[roomDef[RoomDef.Size]];
			
			if (table_valid_px(rsh, mouse_x, mouse_y)) {
				roomSnapX = table_px_to_cell_px_x(mouse_x, mouse_y);
				roomSnapY = table_px_to_cell_px_y(mouse_x, mouse_y);
			}
		} break;
		
		case BuyHireMode.Hire: {
			// find out if we're over a room
			
			// find out if its legal to place this staff there
			
		} break;
	};
}