/// @description return pixel y of a cell containing given pixel position
/// @param pixelX
/// @param pixelY
var _pxX = argument0;
var _pxY = argument1;

var mapId = iTable.gridMapId;

var th = iTable.gridTileHeight;
var oy = iTable.gridMapY;

var _y = tilemap_get_cell_y_at_pixel(mapId, _pxX, _pxY);
			
return oy + (_y * th)