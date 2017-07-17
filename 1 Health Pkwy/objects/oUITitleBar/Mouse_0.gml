/// @desc Manually drag window

switch (dragState) {
	case DragState.None: 
		if (instance_position(mouse_x, mouse_y, oUIButtonParent) == noone) {
			dragStartX = window_mouse_get_x();
			dragStartY = window_mouse_get_y();
			dragState = DragState.Begin;
		}	
		break;
	
	case DragState.Begin:
		var mx = window_mouse_get_x(); var my = window_mouse_get_y();
		if (point_distance(dragStartX, dragStartY, mx, my) > 5)
			dragState = DragState.Dragging;
		break;
		
	default: break;
}
	

