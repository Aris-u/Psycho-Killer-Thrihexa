function collission(tileX, tileY) {
	
	var _tilemap = OCam.collTilemap;
	
	if(tilemap_get(_tilemap, tileX, tileY )) return true
	
	var _roomX = to_room(tileX + 0.5);
	var _roomY = to_room(tileY + 0.5);
	
	if(position_meeting(_roomX, _roomY, oCollision)) return true;
	
	return false;
}