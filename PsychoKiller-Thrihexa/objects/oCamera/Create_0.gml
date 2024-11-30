#macro RES_W 341
#macro RES_H 192
#macro RES_SCALE 4
#macro CAM_SMOOTH 0.1

view_enabled = true;
view_visible[0] = true;

zoom_speed = 1.7

camera = camera_create_view(0,0, RES_W,RES_H);

view_set_camera(0, camera);

window_set_size(RES_W * RES_SCALE, RES_H * RES_SCALE)
surface_resize(application_surface, RES_W * RES_SCALE, RES_H * RES_SCALE)

display_set_gui_size(RES_W, RES_H)

var display_width = display_get_width()
var display_height = display_get_height()

var window_width = RES_W * RES_SCALE;
var window_height = RES_H * RES_SCALE;

window_set_position(display_width/2 - window_width/2, display_height/2 - window_height/2);
startDialogZoom = false;
_npcTarget = noone;
_playerTarget = noone;
in_settings = false;
inventoryOpen = false;
kill = false;
camW = camera_get_view_width(camera)
camH = camera_get_view_height(camera)
timer = 120

zoom_dialog = function(_obj) {
	_Target = _obj
	var _parentTarget = object_get_parent(_Target.object_index);
	if (_parentTarget == oItemParent){global.grabbed_item = _Target.displayName;}
	if (_parentTarget == oNPCParent){
		if(_Target.showDeathIcon = true){
			_Target.dead = true; 
			alarm[3] = 30; 
			kill = true;
		}
	}
	if(!kill){alarm[1] = 30}
	startDialogZoom = true;
}

reset_cam = function(){
	var _parentTarget = object_get_parent(_Target.object_index);
	if (_parentTarget == oItemParent){_Target.takeItem()}
	if(kill){instance_destroy(_Target); kill = false;}
	_Target = noone;
	startDialogZoom = false;	
}

