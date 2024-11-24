/// @description Insert description here
// You can write your code in this editor
if (pathNextPoint > 0 && x == pathPointX && y == pathPointY) {
	
	// next point
	pathNextPoint ++
	
	//oath is over
	if( pathNextPoint >= path_get_number(path)) {
		pathNextPoint = 0;
	}
}