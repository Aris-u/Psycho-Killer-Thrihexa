/// @description Insert description here
// You can write your code in this editor
var _len = TILESIZE, _dir = moveDirection;

var _facingCellX = x + lengthdir_x(_len, _dir);
var _facingCellY = y + lengthdir_y(_len, _dir);
var _iParents = [oNPCParent, oItemParent]
var _target = instance_position(_facingCellX, _facingCellY, _iParents);
var _onInv = keyboard_check_pressed(ord("R"));
var GunON = bool(global.HoldItem == "Revolver")

if (_target != noone && !check_sequence()) {
	if(GunON){_target.showDeathIcon = true;}
	else{_target.showMessageIcon = true;}
	if (keyboard_check_pressed(ord("E"))) {
		oCamera.zoom_dialog(_target)
		_target.moveDirection = point_direction(_target.x, _target.y, x, y)}
}

if (_onInv && !check_sequence(oInventory) && !moving) {
	alarm[0] = 15
}

if(danger){global.viewPlayer = true;}
danger = true;

