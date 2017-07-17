/// @description return pixel x of a cell at pixel position
/// @param pixelX
/// @param pixelY
var _pxX = argument0;
var _pxY = argument1;

var mapId = iTable.gridMapId;
var tw = iTable.gridTileWidth;
var ox = iTable.gridMapX;

var _x = tilemap_get_cell_x_at_pixel(mapId, _pxX, _pxY);
		
return ox + (_x * tw)