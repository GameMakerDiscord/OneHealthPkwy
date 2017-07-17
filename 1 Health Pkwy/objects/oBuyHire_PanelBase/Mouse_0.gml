/// @desc Begin Drag
/// @desc Manually drag window
if (!visible)
	return;
	
switch (dragState) {
	case DragState.None: 
		if (iBuyHireWindow.dragging != noone)
			return;
		
		panelStartX = x;
		panelStartY = y;
		panelDepth = depth;
		
		dragStartX = mouse_x;
		dragStartY = mouse_y;
		
		dragState = DragState.Begin;
		break;
	
	case DragState.Begin:
		if (point_distance(dragStartX, dragStartY, mouse_x, mouse_y) > 5) {
			dragState = DragState.Dragging;
			iBuyHireWindow.dragging = id;
			depth -= 5;
			
			lastMouseX = dragStartX;
			lastMouseY = dragStartY;
		}
		break;
		
	default: break;
}
	

