/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

alarm[0] = 1;

path = path_add();
pathNextPoint = 0;

pathPointX = 0
pathPointY = 0
warning = false;

move_to_point = function(_targetX, _targetY) {
	var _canMove = mp_grid_path(global.AIGrid, path, x, y, _targetX, _targetY, false);

	if (_canMove) {
		pathNextPoint = 1;
		
		pathPointX = 0
		pathPointY = 0
	
	}
}

awareness_hierarchy = function(){
	var detect_dead = distance_to_object(oNPCdead)
	var transform_range = to_room(minRange)
	var detect_player_gun = distance_to_object(oPlayer)
	if(detect_dead <= transform_range){
		global.lastSawX = to_tile(irandom_range(oNPCdead.x - 80, oNPCdead.x+80))	
		global.lastSawY = to_tile(irandom_range(oNPCdead.y - 80, oNPCdead.y+80))
		if(detect_player_gun <= detect_dead && global.viewPlayer){return 2}else{return 1}
	}
	if(global.HoldItem == "Revolver" && global.viewPlayer){
	if(detect_player_gun <= transform_range){
		global.lastSawX = to_tile(irandom_range(oPlayer.x - 80, oPlayer.x+80))	
		global.lastSawY = to_tile(irandom_range(oPlayer.y - 80, oPlayer.y+80))
		return 2
	}}
	return 0;
}