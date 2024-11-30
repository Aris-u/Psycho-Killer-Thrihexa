/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

states = {
	idle: {
		left: sNPC_Idle_Left,
		right: sNPC_Idle_Right,
		up: sNPC_Idle_Up,
		down: sNPC_Idle_Down
	},
	walk: {
		left: sNPC_Walk_Left,
		right: sNPC_Walk_Right,
		up: sNPC_Walk_Up,
		down: sNPC_Walk_Down
	}
}

state = states.idle;