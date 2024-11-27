 global.textboxSequence = -1;
 
function create_textbox (_dialogueArray) {
	var _textbox = instance_create_layer(0, 0, "TextBox", oTextBox);
	_textbox.start(_dialogueArray);
	
	var _camX = camera_get_view_x(view_camera[0]);
	var _camY = camera_get_view_y(view_camera[0]);
	global.textboxSequence = layer_sequence_create("TextBox", _camX, _camY, seqTextBox);
	global.paused = true;
 }

function close_textbox () {
	layer_sequence_destroy(global.textboxSequence);
	instance_destroy(oTextBox);
	oCamera.reset_cam()
	global.paused = false;
	keyboard_clear(ord("E"))
 }