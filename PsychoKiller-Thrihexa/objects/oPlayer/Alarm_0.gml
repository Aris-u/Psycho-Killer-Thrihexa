/// @description Insert description here
// You can write your code in this editor
if(! global.player_checker){create_inventory(); global.player_checker = true;}
else if(global.player_checker){close_inventory(); global.player_checker = false;}