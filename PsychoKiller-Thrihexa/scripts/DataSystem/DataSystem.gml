#macro TILESIZE 16
global.game_over = false;

global.inputX = keyboard_check(ord("D")) - keyboard_check(ord("A"))
global.inputY = keyboard_check(ord("S")) - keyboard_check(ord("W"))