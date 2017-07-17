/// @description add a door between 2 tiles (or the edge)
/// @param cx1
/// @param cy1
/// @param cx2
/// @param cy2
var _cx1 = argument0;
var _cy1 = argument1;
var _cx2 = argument2;
var _cy2 = argument3;

var centerX = -1;
var centerY = -1;
var doorSprite = noone;

var doorSprites = iRooms.doorSprites;

var tw = iTable.gridTileWidth;
var th = iTable.gridTileHeight;

if (_cx1 != _cx2) {
	// we can't do corners man
	if (_cy1 != _cy2)
		return;	
	
	// vert door (between two side-by-side)
	doorSprite = doorSprites[DoorOrient.HotDog];
	
	var minx = min(_cx1, _cx2);
	var maxx = max(_cx1, _cx2);
	
	var pmx = table_cell_to_px_x(maxx, _cy1);
	var pmy = table_cell_to_px_y(maxx, _cy1);
	
	centerX = pmx - 1;
	centerY = pmy + (th * 0.5);
	
	
} else if (_cy1 != _cy2) {
	// horz door (between above-below)
	doorSprite = doorSprites[DoorOrient.Hamburger];
	
	var miny = min(_cy1, _cy2);
	var maxy = max(_cy1, _cy2);
	
	var pmx = table_cell_to_px_x(_cx1, maxy);
	var pmy = table_cell_to_px_y(_cx1, maxy);
	
	centerX = pmx + (tw * 0.5);
	centerY = pmy - 1;
}

if (doorSprite != noone) {
	var dw = sprite_get_width(doorSprite);
	var dh = sprite_get_height(doorSprite);
	
	centerX -= dw * 0.5;
	centerY -= dh * 0.5;
	
	var newDoor = instance_create_layer(ceil(centerX), ceil(centerY), "Doors", oDoor);
	newDoor.sprite_index = doorSprite;
}