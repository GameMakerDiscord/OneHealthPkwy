/// @description return cell x of a cell at pixel position
/// for consitency with the other table functions
/// @param pixelX
/// @param pixelY
var _pxX = argument0;
var _pxY = argument1;

var mapId = iTable.gridMapId;
return tilemap_get_cell_x_at_pixel(mapId, _pxX, _pxY);