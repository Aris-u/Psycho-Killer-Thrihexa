/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _len = TILESIZE,		_dir = moveDirection;
var _facingCellX = x + lengthdir_x(_len, _dir);
var _facingCellY = y + lengthdir_y(_len, _dir);
var _target = instance_position(_facingCellX, _facingCellY, oPlayer);

if(global.viewPlayer){
	if(warning){global.detection = alert.red}
}else if(global.detection = alert.red){global.detection = alert.yellow}

if (_target != noone && !check_sequence() && global.detection = alert.red)
{
	_target.moveDirection = point_direction(_target.x, _target.y, x, y)
	create_textbox(defaultDialogue)
	_target.dead = true
	global.game_over = true
}