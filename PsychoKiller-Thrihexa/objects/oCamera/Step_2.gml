/// @description Insert description here
// You can write your code in this editor
var camX = camera_get_view_x(camera)
var camY = camera_get_view_y(camera)
var camW = camera_get_view_width(camera)
var camH = camera_get_view_height(camera)

if (startDialogZoom) {
	var targetX = _Target.x - camW/2;
	var targetY = _Target.y - camH/2;
}else {
	var targetX = oPlayer.x - camW/2;
	var targetY = oPlayer.y - camH/2;	
}

targetX = clamp(targetX, 0, room_width - camW)
targetY = clamp(targetY, 0, room_height - camH)

camX = lerp(camX, targetX, CAM_SMOOTH);
camY = lerp(camY, targetY, CAM_SMOOTH);



camera_set_view_pos(camera, camX, camY);
camera_set_view_size(camera, camW, camH);
