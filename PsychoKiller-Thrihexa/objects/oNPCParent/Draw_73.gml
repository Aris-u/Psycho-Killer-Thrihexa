/// @description Insert description here
// You can write your code in this editor
if (showMessageIcon) {
	draw_sprite(sMessage, 0, x, y);
	showMessageIcon = false;
}
if(showDeathIcon){
	draw_sprite(sKillTarget, 0, x, y-7);
	showDeathIcon = false;
}