/// @description return pixel x of cell tl-corner 
/// @param cellX
/// @param cellY
var _cx = argument0;
var _cy = argument1;

var mapId = iTable.gridMapId;
var th = iTable.gridTileHeight;
var oy = iTable.gridMapY;

return oy + (_cy * th)