/// @description hire doctor if in valid room

if (iTable.hoverTable && dragState == DragState.Dragging && iBuyHireWindow.dragging == id) {
	var roomCat = staffDef[Staff.Category];
	var hoverRoom = instance_position(mouse_x, mouse_y, oRoom);
	
	if (hoverRoom != noone && hoverRoom.staff == noone) {
		var roomDef = iRooms.roomDefs[hoverRoom.roomType];
		if (roomDef[RoomDef.Category] == roomCat) {
			// hire staff
			var staff = instance_create_layer(hoverRoom.x + 2, hoverRoom.y + 2, "Staffs", oStaffMember);
			staff.roomCat = roomCat;
			staff.staffDef = staffDef;
			staff.face = face;
			staff.eyes = eyes;
			staff.sname = label;
			
			hoverRoom.staff = staff;
			
			ds_list_delete(iTabButton_Hire.panels, ds_list_find_index(iTabButton_Hire.panels, id));
		
			instance_destroy(id)
			
			iBuyHireWindow.dragging = noone;
			dragState = DragState.None;
			return;
		}
	}
}

event_inherited();