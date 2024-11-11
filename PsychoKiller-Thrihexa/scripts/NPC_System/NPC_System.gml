// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NPC_System(){
	global.__NPC__MANAGER = self
	ALL_NPC = array_create(1)
}

function NPCElement () constructor {
	MANAGER_ = global.__NPC__MANAGER
	ACTION_AB_ = noone
	ID_ = noone
	TYPE_ = noone 
	TEXT_ = []
}