/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(!normal_behaviour){
	if (moves && !ToKitchen) {
		var choice_ = instance_find(PointB,irandom_range(0,instance_number(PointB)))
		if instance_exists(choice_){
			var _tileX = to_tile(choice_.x) + 0.5
			var _tileY = to_tile( choice_.y) + 0.5;
			move_to_point(to_room(_tileX), to_room(_tileY));
		}else {alarm[0] = 30}
	}
	if (moves && ToKitchen) {
		var choice_ = instance_find(Kitchen,irandom_range(0,instance_number(Kitchen)))
		if instance_exists(choice_){
			var _tileX = to_tile(choice_.x) + 0.5
			var _tileY = to_tile( choice_.y) + 0.5;
			move_to_point(to_room(_tileX), to_room(_tileY));
		}else {alarm[0] = 30}
	}
}
