/// @description Insert description here
// You can write your code in this editor
opt = 0;
dotX = 0;
dotY = 0;
color_select = c_yellow;
color_any = c_black
line_list = [oLineNote_1,oLineNote_2,oLineNote_3,
oLineNote_4,oLineNote_5,oLineNote_6,oLineNote_7,
oLineNote_8,oLineNote_9]
global.ignore_input = true;
valid_list = []

check_valid = function(index) {
		if(line_list[index].itemName != "") return true
		else return false
}