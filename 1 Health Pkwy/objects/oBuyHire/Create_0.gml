// expects buttons are created first
enum BuyHireMode {
	Buy,
	Hire,
	
	NumModes
}

buyHireTabs = [ iTabButton_Buy, iTabButton_Hire ];
currentMode = buyHireTabs[0].image_index == 0 ? 0 : 1;
prevMode    = buyHireTabs[0].image_index == 0 ? 1 : 0;

dragging = noone;

buyHire_updateView();