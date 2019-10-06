/// @description Insert description here
// You can write your code in this editor
obj_game.player_health = max(0, obj_game.player_health - 1);

with (obj_valid_area) {
	if (valid_area_id == other.block_id) {
		image_index = 2;
	}
}

audio_sound_pitch(snd_lost, random_range(.9, 1.1));
audio_play_sound(snd_lost, 5, false);

instance_destroy(self);