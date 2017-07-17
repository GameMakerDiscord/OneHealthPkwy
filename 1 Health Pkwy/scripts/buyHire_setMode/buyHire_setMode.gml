/// @description Set the buyHire mode and update the tab
/// @param newMode
var newMode = argument0;

if (newMode == iBuyHireWindow.currentMode)
	return;
	
iBuyHireWindow.prevMode = iBuyHireWindow.currentMode;
iBuyHireWindow.currentMode = newMode;
with(iBuyHireWindow) buyHire_updateView();