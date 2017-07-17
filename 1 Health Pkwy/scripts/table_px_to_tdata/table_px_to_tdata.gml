/// @description return tdata of a grid cell based on pixel position
/// @param pixelX
/// @param pixelY
var _pxX = argument0;
var _pxY = argument1;

var mapId = iTable.gridMapId;

var _x = tilemap_get_cell_x_at_pixel(mapId, _pxX, _pxY);
var _y = tilemap_get_cell_y_at_pixel(mapId, _pxX, _pxY);
			
return tilemap_get(mapId, _x, _y);