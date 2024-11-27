/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
global.inputX = keyboard_check(ord("D")) - keyboard_check(ord("A"))
global.inputY = keyboard_check(ord("S")) - keyboard_check(ord("W"))

inputX = global.inputX
inputY = global.inputY