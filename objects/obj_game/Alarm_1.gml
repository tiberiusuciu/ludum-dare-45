/// @description Insert description here
// You can write your code in this editor

if (room == room2) {
	active_columns++;

	if (active_columns > max_columns) {
		active_columns = max_columns;
	}
	else {
		audio_sound_pitch(snd_hallway, random_range(.9, 1.1));
		audio_play_sound(snd_hallway, 5, false);
	}

	fall_speed = min(max_fall_speed, fall_speed + 2);
	interval = max(min_interval, interval - 1);

	powerup_chance = min(max_powerup_chance, powerup_chance + 1);


	alarm[1] = difficulty_increase;
}