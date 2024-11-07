enum Pstates {
	free_move,
	bounded,
}

function PlayerSM(){

	state = Pstates.free_move
	spr_player = [s_player_up,s_player_down,s_player_left,s_player_right]
	#region Atributes
	hp = 10
	spd = 3
	
	switch(state){
		case Pstates.free_move:
			FreeMove();
		break;
		case Pstates.bounded:
		break;
	}
	
}

function FreeMove(){
	right = keyboard_check(ord("D"))
	up = keyboard_check(ord("W"))
	left = keyboard_check(ord("A"))
	down = keyboard_check(ord("S"))
	_xx = right - left
	_yy = down - up

	if (_xx != 0 or _yy != 0) { 
		MovWork()
		AnimMov()
	}else {
		image_speed = 0
		image_index = 1	
	}
}

function MovWork() {
	
	dir = point_direction(x,y, x + _xx, y + _yy)
	hspd = lengthdir_x(spd, dir)
	vspd = lengthdir_y(spd, dir)

	if place_meeting(x + hspd, y, oWall) {
		while(!place_meeting(x + sign(hspd),y, oWall)){
			x = x + sign(hspd)
		}
		hspd = 0
	}	

	x += hspd

	if place_meeting(x,y + vspd, oWall) {
		while(!place_meeting(x,y + sign(vspd),oWall)){
			y = y + sign(vspd)
		}
		vspd = 0
	}

	y += vspd
}

function AnimMov(){
	image_speed = 1
	var nav_list = [up, down, left, right]
	for (var i = 0; i < array_length(nav_list); ++i) {
	    checkdir = nav_list[i]
		if(checkdir){
			if(sprite_index = spr_player[i]){
				exit
			}else{
				sprite_index = spr_player[i]
				exit
			}
		}
	}
}