/// @description Window Dragging Logic
if (dragState == DragState.Dragging) {
	var mx = window_mouse_get_x();
	var my = window_mouse_get_y();
	var winX = window_get_x();
	var winY = window_get_y();
	var newX = winX + (mx - dragStartX);
	var newY = winY + (my - dragStartY);
	window_set_position(newX, newY);
			
	dragStartX = mx - (newX - winX);
	dragStartY = my - (newY - winY);
}