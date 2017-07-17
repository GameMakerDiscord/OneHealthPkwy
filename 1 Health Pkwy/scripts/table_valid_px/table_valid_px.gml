/// @description returns true if valid placement
/// @param roomShape
/// @param cellX
/// @param cellY
/// @param (opt = true)checkDoors
var _roomShape = argument[0];
var _pxX = argument[1];
var _pxY = argument[2];
var _checkDoors = argument_count > 3 ? argument[3] : true;

var cx = table_px_to_cell_x(_pxX, _pxY);
var cy = table_px_to_cell_y(_pxX, _pxY);

return table_valid(_roomShape, cx, cy, _checkDoors);