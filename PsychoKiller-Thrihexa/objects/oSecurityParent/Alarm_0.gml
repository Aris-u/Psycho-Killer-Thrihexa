/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(!normal_behaviour){
	switch(global.detection){
		case alert.green:
		var _targetX = irandom_range(xstart - moveRange, ystart + moveRange);
		var _targetY = irandom_range(ystart - moveRange, xstart + moveRange);
		var _tileX = to_tile(_targetX) + 0.5;
		var _tileY = to_tile(_targetY) + 0.5;
		move_to_point(to_room(_tileX), to_room(_tileY));
		alarm[0] = irandom_range(minMoveTime, maxMoveTime);
		break;
		case alert.yellow:
			var _targetX = to_room(global.lastSawX  + 0.5)
			var _targetY = to_room(global.lastSawY + 0.5) 
			move_to_point(_targetX, _targetY)
		alarm[0] = 60
		break;
		case alert.red:
			var _targetX = to_room(to_tile(oPlayer.x) + 0.5)
			var _targetY = to_room(to_tile(oPlayer.y) + 0.5)
			move_to_point(_targetX, _targetY)	
		alarm[0] = 30
		break;
	}
	
}
