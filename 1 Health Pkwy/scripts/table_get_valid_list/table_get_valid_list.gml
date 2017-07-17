/// @description gets a list of spots the tile can be passed in
/// @param roomShape
/// @param spotList
var _roomShape = argument0;
var _spotList  = argument1;
var spotIndex = array_length_1d(_spotList);

var rg = iTable.roomGrid;

var gw = iTable.gridMapWidth;
var gh = iTable.gridMapHeight;

for (var gy = 0; r < gh; ++gy) {
  for (var gx = 0; c < gw; ++gx) {
		if (table_valid(_roomShape, gx, gy)) {
			_spotList[spotIndex] = [ gx, gy ];
			++spotIndex;
		}
	}
}
