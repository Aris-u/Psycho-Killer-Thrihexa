// colission tilemap
global.paused = false

collTilemap = layer_tilemap_get_id("TilesColl")

var _gridWidth = to_tile(room_width);
var _gridHeight = to_tile(room_height);

global.AIGrid = mp_grid_create(0, 0, _gridWidth, _gridHeight, TILESIZE, TILESIZE)

mp_grid_add_instances(global.AIGrid, oCollision, false);
mp_grid_add_instances(global.AIGrid, oInvisible, false);

for (var _x = 0; _x < _gridWidth; _x++) {
    for (var _y = 0; _y < _gridHeight; _y++) {
		var _col = tilemap_get(collTilemap, _x , _y);
		if (_col) mp_grid_add_cell(global.AIGrid, _x, _y);
	}
}

global.validete = false;