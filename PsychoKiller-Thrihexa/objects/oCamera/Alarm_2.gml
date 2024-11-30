/// @description Insert description here
// You can write your code in this editor
if(in_settings && !check_sequence()){
	start_settings()
}
if(!in_settings && !check_sequence(oSettings)){
	close_settings()
}