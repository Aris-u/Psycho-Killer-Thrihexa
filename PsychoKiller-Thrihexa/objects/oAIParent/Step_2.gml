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

if (watcher){
	var response = awareness_hierarchy()
	if(response > 0){
	warning = true
	update_alert(id,1)
	if(response > 1){update_alert(id,2)}}
	else{warning = false}
}   