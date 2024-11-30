function collission(tileX, tileY, _Target) {
	var _parentTarget = object_get_parent(_Target.object_index);
	
	var _tilemap = oRoomManager.collTilemap;
	
	if(tilemap_get(_tilemap, tileX, tileY )) return true
	
	var _roomX = to_room(tileX + 0.5);
	var _roomY = to_room(tileY + 0.5);
	
	if(position_meeting(_roomX, _roomY, oCollision)) return true;
	
	if (position_meeting(_roomX, _roomY, oCharacterParent)) return true;
	if (_parentTarget == oSecurityParent || _parentTarget == oNPCParent)
	{
	if (position_meeting(_roomX, _roomY, oInvisible)) return true;
	}
	return false;
}