/// @description buyHire - update display based on selected tab
/// called on: buyHire
var hideTab = buyHireTabs[prevMode];
var showTab = buyHireTabs[currentMode];
var hidePanels = hideTab.panels;
var showPanels = showTab.panels

hideTab.image_index = 1;
showTab.image_index = 0;

var numPanels = ds_list_size(hidePanels);
for (var panelIndex = 0; panelIndex < numPanels; ++panelIndex) {
	var panel = hidePanels[| panelIndex];
	panel.visible = false;
}

numPanels = ds_list_size(showPanels);
for (var panelIndex = 0; panelIndex < numPanels; ++panelIndex) {
	var panel = showPanels[| panelIndex];
	panel.visible = true;
}

hideTab.selected = false;
showTab.selected = true;