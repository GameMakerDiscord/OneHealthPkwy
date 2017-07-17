/// @description set a room in the room grid (and also force the room coordinates)
/// @param roomId
/// @param cellX
/// @param cellY
/// @param (opt=true)checkDoors
var _roomId = argument[0];
var _cx     = argument[1];
var _cy     = argument[2];
var _checkDoors = argument_count > 3 ? argument[3] : true;

var roomDef = iRooms.roomDefs[_roomId.roomType];
var rsh = iRooms.roomShapes[roomDef[RoomDef.Size]];

if (!table_valid(rsh, _cx, _cy, _checkDoors))
	return false;

var rg = iTable.roomGrid;
var shs = array_length_1d(rsh);
for (var si = 0; si < shs; ++si) {
	var sst = rsh[si];
	var ox = sst[0]; var oy = sst[1];
	rg[@_cx+ox, _cy+oy] = _roomId;
}

var _x = _roomId.x; var _y = _roomId.y;
_roomId.x = table_px_to_cell_px_x(_x, _y);
_roomId.y = table_px_to_cell_px_y(_x, _y);

return true;