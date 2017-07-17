event_inherited();

label = "STAFF";

var numStaff = ds_list_size(iStaff.availableStaff);

// Create initial set of panels	
for (var panelIndex = 0; panelIndex < NumBuyHirePanels && numStaff > 0; ++panelIndex) {
	var newPanel = buyHire_hire_add(irandom(numStaff - 1));
	newPanel.y = iBuyHireWindow.y + 14 + (12 * panelIndex);
	ds_list_add(panels, newPanel);
	numStaff--;
}