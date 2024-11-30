/// @description Insert description here
// You can write your code in this editor
var moveChoice = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))
var EnterChoice = keyboard_check_pressed(ord("E"))
if(check_sequence(oInventory)){moveChoice = 0; EnterChoice=false;}

if (moveChoice != 0){
	if(array_length(line_list) > 0){
		opt += moveChoice
		if(opt > (array_length(line_list)-1)){opt = 0}
		if(opt < 0){opt = (array_length(line_list)-1)}
		var target = line_list[opt]
		dotX = target.x - 40
		dotY = target.y - 2
	}
}
if (EnterChoice){
	if(check_valid(opt)){
	if(holdItem(global.inventory[opt])){
	global.grabbed_item = global.inventory[opt]
	create_textbox(global.dialogue.hand_item)
	}else {
		handOff()
		global.grabbed_item = global.inventory[opt]
		create_textbox(global.dialogue.handoff_item)
	}}
}

for (var i = 0; i < array_length(global.inventory); ++i) {
    line_list[i].itemName = global.inventory[i]
}