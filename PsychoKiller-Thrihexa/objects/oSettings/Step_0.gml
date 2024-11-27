/// @description Insert description here
// You can write your code in this editor
var buttonlist = sequence_get_objects(seqSettings)
var moveChoice = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))
var EnterChoice = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E"))

if (moveChoice != 0){
	opt += moveChoice
	if(opt > (array_length(buttonlist)-1)){opt = 0}
	if(opt < 0){opt = (array_length(buttonlist)-1)}
	var target = buttonlist[opt]
	select_arrow.x = target.x - 30
	select_arrow.y = target.y
}