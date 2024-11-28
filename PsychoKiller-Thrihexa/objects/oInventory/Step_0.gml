/// @description Insert description here
// You can write your code in this editor
var moveChoice = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))
var EnterChoice = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E"))

if (moveChoice != 0){
	opt += moveChoice
	if(opt > (array_length(line_list)-1)){opt = 0}
	if(opt < 0){opt = (array_length(line_list)-1)}
	var target = line_list[opt]
	dotX = target.x - 40
	dotY = target.y
}