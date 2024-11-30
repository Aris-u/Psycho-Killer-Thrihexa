/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

states = {
	idle: {
		left: sPlayer_Idle_Left,
		right: sPlayer_Idle_Right,
		up: sPlayer_Idle_Up,
		down: sPlayer_Idle_Down
	},
	walk: {
		left: sPlayer_Walk_Left,
		right: sPlayer_Walk_Right,
		up: sPlayer_Walk_Up,
		down: sPlayer_Walk_Down
	}
}

state = states.idle;
danger = false;