if (mouse_check_button_pressed(mb_left)) {
	var sm = instance_position(mouse_x, mouse_y, oStaffMember);
	
	if (viewing == noone || (viewing != noone && viewing != sm && sm != noone)) {
//		if (viewing != noone)
//			viewing.visible = false;
			
		if (sm != noone) {
			iStaffInfo.viewing = sm;
			iStaffInfo.visible = true;	
		}
	} else {
		var hovering = instance_position(mouse_x, mouse_y, id);
		if (!hovering) {
			iStaffInfo.viewing = noone;
			iStaffInfo.visible = false;	
		}
	}
}