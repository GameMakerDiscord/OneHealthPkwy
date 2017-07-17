/// @description set a room in the room grid (and also force the room coordinates)
/// @param roomId
/// @param cellX
/// @param cellY
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
	
	rg[@_cx+ox, _cy+oy] = _roomId;
}

return true;