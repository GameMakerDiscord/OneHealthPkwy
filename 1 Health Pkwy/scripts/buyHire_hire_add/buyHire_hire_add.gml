/// @description initialize the panel for a buy
/// @param staffDefinitionId
var _staffIndex = argument0;
if (_staffIndex > ds_list_size(iStaff.availableStaff))
	return;
	
var roomColors = iRooms.roomColors;

var staffDef = iStaff.staffDefs[iStaff.availableStaff[|_staffIndex]];
ds_list_delete(iStaff.availableStaff, _staffIndex);

var staffPrefix = iStaff.staffPrefix;

var roomCat  = staffDef[Staff.Category];
var faceEyes = staffDef[Staff.FaceEyes];
var face     = staffDef[Staff.Face];
var sname    = staffDef[Staff.Name];
var title    = staffDef[Staff.Title];

var xx = iBuyHireWindow.x + 2;
var yy = iBuyHireWindow.y + 15;

var panel = instance_create_depth(xx, yy, iBuyHireWindow.depth - 1, oBuyHire_PanelHire);

var titleStr = staffPrefix[title];
// intitialize the staffmember
panel.staffDef   = staffDef;
panel.panelColor = roomColors[roomCat, RoomColor.BHFill];
panel.labelColor = roomColors[roomCat, RoomColor.BHLabel];
panel.label      = titleStr + sname;
panel.price      = makeDigitString(staffDef[Staff.Salary], 3);

// unique to staff
panel.face = face;
panel.eyes = faceEyes;

return panel;