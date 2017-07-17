/// @description Buy room is valid placement
if (iTable.hoverTable && dragState == DragState.Dragging && iBuyHireWindow.dragging == id) {
	if (iTable.roomSnapX >= 0 && iTable.roomSnapY >= 0) {
		var placedRoom = instance_create_layer(iTable.roomSnapX, iTable.roomSnapY, "Facilities", oRoom);
		placedRoom.roomType = roomType;
		table_set_room_px(placedRoom, placedRoom.x, placedRoom.y);
		
		// Find adjacent tiles and add doors
		var def = iRooms.roomDefs[roomType];
		var roomShape = iRooms.roomShapes[def[RoomDef.Size]];
		var numShapes = array_length_1d(roomShape);
		
		var rg = iTable.roomGrid;
		var xx = table_px_to_cell_x(iTable.roomSnapX, iTable.roomSnapY);
		var yy = table_px_to_cell_y(iTable.roomSnapX, iTable.roomSnapY);
				
		for (var dy = -1; dy <= 1; ++dy) {
			for (var dx = -1; dx <= 1; ++dx) {
				if (abs(dy) == abs(dx)) continue;
								
				for (var shapeTileIndex = 0; shapeTileIndex < numShapes; ++shapeTileIndex) {
					var sh = roomShape[shapeTileIndex];
					var s_x = sh[0];
					var s_y = sh[1];
					
					var s_dx = s_x + dx;
					var s_dy = s_y + dy;
					
					var isSelf = false;
					for (var selfIndex = 0; selfIndex < numShapes && !isSelf; ++selfIndex) {
						sh = roomShape[selfIndex];
						
						var st_x = sh[0]
						var st_y = sh[1];
				
						isSelf = s_dx == st_x && s_dy == st_y;
					}
			
					if (isSelf) continue;
					
					var tile_x = xx + s_x;
					var tile_y = yy + s_y;
					var test_x = tile_x + dx;
					var test_y = tile_y + dy;
					if (rg[@ test_x, test_y] >= 0)
						table_add_door(tile_x, tile_y, test_x, test_y);
				}
			}
		}	
		ds_list_delete(iTabButton_Buy.panels, ds_list_find_index(iTabButton_Buy.panels, id));
		
		instance_destroy(id)
		iBuyHireWindow.dragging = noone;
		dragState = DragState.None;
		
		return;
	}
}

event_inherited();