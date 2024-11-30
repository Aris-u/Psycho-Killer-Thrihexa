 global.textboxSequence = -1;
 global.pausedSequence = -1;
 global.InventorySequence = -1;
 global.player_checker = false;

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
	if(!global.ignore_input){	
	if(!global.game_over){oCamera.reset_cam()}
		global.paused = false;
	}
	keyboard_clear(ord("E"))
 }
 
function start_settings() {
	var _settings = instance_create_layer(0, 0, "Settings", oSettings);
	var _camX = camera_get_view_x(view_camera[0]);
	var _camY = camera_get_view_y(view_camera[0]);
	global.pausedSequence = layer_sequence_create("Settings", _camX, _camY, seqSettings);
	global.paused = true;
}

function close_settings() {
	layer_sequence_destroy(global.pausedSequence);
	instance_destroy(oSettings);
	global.paused = false;
	keyboard_clear(vk_escape)
}

function create_inventory() {
	instance_create_layer(0, 0, "Settings", oInventory);
	var _camX = camera_get_view_x(view_camera[0]);
	var _camY = camera_get_view_y(view_camera[0]);
	global.InventorySequence = layer_sequence_create("Settings", _camX, _camY, seqInventoryEntrance);
	global.paused = true;
 }

function close_inventory() {
	layer_sequence_destroy(global.InventorySequence);
	instance_destroy(oInventory);
	global.paused = false;
 }
 
global.sequencesID = [oTextBox,oSettings,oInventory]

function check_sequence(ignore = noone) {
	for (var i = 0; i < array_length(global.sequencesID); ++i) {
		if(instance_exists(global.sequencesID[i])){
			if(ignore != noone && global.sequencesID[i] != ignore) return true
			else if(ignore == noone) return true
		}
	}return false;
}

function interrupt_entrance_inv(){
	layer_sequence_pause(global.InventorySequence);
}

function interrupt_menu(){
	layer_sequence_pause(global.pausedSequence);
}