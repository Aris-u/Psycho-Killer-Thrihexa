/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (pathNextPoint > 0) {
	pathPointX = path_get_point_x(path, pathNextPoint);
	pathPointY = path_get_point_y(path, pathNextPoint);
	
	inputX = sign(pathPointX - x);
	inputY = sign(pathPointY - y);
	
}else {
	inputX = 0;
	inputY = 0;
}