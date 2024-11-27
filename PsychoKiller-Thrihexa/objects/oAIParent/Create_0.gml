/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

alarm[0] = 1;

path = path_add();
pathNextPoint = 0;

pathPointX = 0
pathPointY = 0

move_to_point = function(_targetX, _targetY) {
	var _canMove = mp_grid_path(global.AIGrid, path, x, y, _targetX, _targetY, false);

	if (_canMove) {
		pathNextPoint = 1;
		
		pathPointX = 0
		pathPointY = 0
	
	}
}

