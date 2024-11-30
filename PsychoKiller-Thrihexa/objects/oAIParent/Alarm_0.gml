/// @description Insert description here
// You can write your code in this editor
if(normal_behaviour){
	if (moves) {
	
		var _targetX = irandom_range(lastX - moveRange, lastY + moveRange);
		var _targetY = irandom_range(lastY - moveRange, lastX + moveRange);
		var _tileX = to_tile(_targetX) + 0.5;
		var _tileY = to_tile(_targetY) + 0.5;
	
		move_to_point(to_room(_tileX), to_room(_tileY));
		lastX = _targetX; lastY = _targetY;
		alarm[0] = irandom_range(minMoveTime, maxMoveTime);
	}
}
