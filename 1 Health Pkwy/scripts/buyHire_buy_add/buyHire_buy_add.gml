/// @description initialize the panel for a buy
/// @param roomType
var _roomType = argument0;

var xx = iBuyHireWindow.x + 2;
var yy = iBuyHireWindow.y + 15;

var panel = instance_create_depth(xx, yy, iBuyHireWindow.depth - 1, oBuyHire_PanelBuy);

var roomColors = iRooms.roomColors;

var roomDef   = iRooms.roomDefs[_roomType];
var roomCat   = roomDef[RoomDef.Category];
var roomSize  = roomDef[RoomDef.Size];
var roomIcons = iRooms.roomIcons[roomSize];
var numIcons = array_length_1d(roomIcons);

// initialize the room
panel.roomType   = _roomType;
panel.panelColor = roomColors[roomCat, RoomColor.BHFill];
panel.labelColor = roomColors[roomCat, RoomColor.BHLabel];
panel.label = roomDef[RoomDef.BHLabel];
panel.price = makeDigitString(roomDef[RoomDef.Cost], 3);

// unique to buy
panel.sizeIcon = roomIcons[irandom(numIcons - 1)];

return panel;