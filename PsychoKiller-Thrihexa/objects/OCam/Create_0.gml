var _w = global.res.width;
var _h = global.res.height;
camera = camera_create_view(0, 0, _w, _h, 0, oPlayer, -1, -1, _w/2, _h/2);

view_enabled = true;
view_visible[0] = true;

view_set_camera(0, camera);

// colission tilemap
collTilemap = layer_tilemap_get_id("TilesColl")