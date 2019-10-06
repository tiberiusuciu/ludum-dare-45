/// @description Insert description here
// You can write your code in this editor

if (obj_game.num1 && valid_area_id == 1 || 
	obj_game.num2 && valid_area_id == 2 ||
	obj_game.num3 && valid_area_id == 3) {
		
	if (is_colliding) {
		image_index = 1;
		is_colliding = false;
	}
	else {
		if (!obj_game.play_fade) {
			obj_game.player_health--;
		}
		image_index = 2;
	}
}