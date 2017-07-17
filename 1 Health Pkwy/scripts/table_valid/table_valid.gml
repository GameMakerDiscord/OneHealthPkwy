/// @description returns true if valid placement
/// @param roomShape
/// @param cellX
/// @param cellY
/// @param (opt = true)checkDoors
var _roomShape = argument[0];
var _cellX = argument[1];
var _cellY = argument[2];
var _checkDoors = argument_count > 3 ? argument[3] : true;

var rg = iTable.roomGrid;

var sh  = is_array(_roomShape) ? _roomShape : iRooms.roomShapes[_roomShape];
var nst = array_length_1d(sh);

var gw = iTable.gridMapWidth;
var gh = iTable.gridMapHeight;

var valid = true;
var validDoor = false;

for (var si = 0; si < nst; ++si) {
	var ssh = sh[si];
	var sgx = _cellX + ssh[0];
	var sgy = _cellY + ssh[1];
	
	if (sgx >= gw || sgy >= gh ||
			rg[@sgx, sgy] != noone) {
		valid = false;
		break;		
	}
	
	// check adjacent for doors
	if (_checkDoors && valid && !validDoor) {
		for (var oy = -1; oy <= 1 && !validDoor; ++oy) {
			for (var ox = -1; ox <= 1 && !validDoor; ++ox) {
				
				// we only want left/right/up/down
				if (abs(ox) == abs(oy)) continue;
				
				// first check if its another one of OUR tiles
				var isSelf = false; 
				var ssx = (sgx - _cellX) + ox;
				var ssy = (sgy - _cellY) + oy;
				for (var ssi = 0; ssi < nst && !isSelf; ++ssi) {
					var osh = sh[ssi];
					isSelf = ssx == osh[0] && ssy == osh[1];
				}
				
				if (isSelf)
					continue;
				var orx = sgx+ox;
				var ory = sgy+oy;
				var gr = rg[@orx, ory];
				if (gr >= 0) {
					// TODO: check door configurations
					validDoor = true;
				}
			}
		}
	}
}
if (valid && _checkDoors) valid = validDoor;

return valid;