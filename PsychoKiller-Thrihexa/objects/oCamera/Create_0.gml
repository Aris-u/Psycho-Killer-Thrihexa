#macro RES_W 341
#macro RES_H 192
#macro RES_SCALE 4
#macro CAM_SMOOTH 0.1

view_enabled = true;
view_visible[0] = true;

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

zoom_dialog = function(_obj) {
	_Target = _obj
	alarm[1] = 30
	startDialogZoom = true;
}

reset_cam = function(){
	var _parentTarget = object_get_parent(_Target.object_index);
	if (_parentTarget == oItemParent){_Target.takeItem()}
	_Target = noone;
	startDialogZoom = false;	
}