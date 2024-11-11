// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum type {
	int_object,
	grab_item,
	guest,
}

function InteractionSystem() constructor {
	global.__Interaction_Manager = self
	pointx = 0;pointy = 0; // setup for raycast
	INTERACT_TRIGGER_ = keyboard_check_pressed(ord("E"))
	ALL_OBJ = array_create(1)
}

function InteractElement () constructor {
	MANAGER_ = global.__Interaction_Manager
	ACTION_AB_ = noone
	ID_ = noone
	TYPE_ = noone 
	TEXT_ = []
}

function InteractBehaviour(__id, __type, __text, _action_available = true) : InteractElement() constructor {
	
	ID_ = __id
	TYPE_ = __type
	TEXT_ = __text
	ACTION_AB_ = _action_available
	
	array_push(MANAGER_.ALL_OBJ, ID_)
} 

function RayCast(){
	laser_length = 25;
	laser_end_x = x;
	laser_end_y = y;
	if (_xx != 0 and _yy = 0){
		pointx = _xx
		pointy = 0
	}
	if (_yy !=  0 and _xx = 0){
		pointy = _yy
		pointx = 0
	}
	var _laser_dir = point_direction(x,y, x + pointx, y + pointy)
	laser_end_x = x + lengthdir_x(laser_length, _laser_dir);
	laser_end_y = y + lengthdir_y(laser_length, _laser_dir);
	manager = global.__Interaction_Manager
	var _trigger = manager.INTERACT_TRIGGER_
	if(_trigger){
		var target = collision_line(x,y,laser_end_x,laser_end_y,manager.ALL_OBJ,false,true)
	}
}