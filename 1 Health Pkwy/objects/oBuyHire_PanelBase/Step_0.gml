if (iBuyHireWindow.dragging == id && dragState == DragState.Dragging) {
	x += mouse_x - lastMouseX;
	y += mouse_y - lastMouseY;
	lastMouseX = mouse_x;
	lastMouseY = mouse_y;
}
	