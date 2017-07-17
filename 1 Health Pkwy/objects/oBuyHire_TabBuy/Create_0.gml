event_inherited();

label = "ROOMS";

// Create initial set of panels
for (var panelIndex = 0; panelIndex < NumBuyHirePanels; ++panelIndex) {
	var newPanel = buyHire_buy_add(irandom(RoomType.NumTypes - 1));
	newPanel.y = iBuyHireWindow.y + 14 + (12 * panelIndex);
	ds_list_add(panels, newPanel);
}