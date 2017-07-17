/// @desc manage the tilemap, setting each tile appropriately
hoverTable = (instance_position(mouse_x, mouse_y, id) != noone);
gridMapId = layer_tilemap_get_id(layer_get_id("FacilityGrid"));

gridMapX = -7; // tilemap_get_x(gridMapId);
gridMapY = -5; // tilemap_get_y(gridMapId);

gridTileWidth  = tilemap_get_tile_width(gridMapId);
gridTileHeight = tilemap_get_tile_height(gridMapId);
		
gridMapWidth  = tilemap_get_width(gridMapId);
gridMapHeight = tilemap_get_height(gridMapId);		

roomGrid = [ ];
for (var row = 0; row < gridMapHeight; ++row) {
	for (var col = 0; col < gridMapWidth; ++col) {
		var tdata = tilemap_get(gridMapId, col, row);
		roomGrid[col, row] = tile_get_empty(tdata) ? -1 : noone;
	}
}

roomSnapX = -1;
roomSnapY = -1;