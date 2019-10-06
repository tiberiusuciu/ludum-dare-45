is_invalid_press = false;
is_colliding = true;
image_index = 1;

var value = 0;

if (other.has_power) {
	if (other.power_id == 1) {
		obj_game.player_health += 5;
		audio_sound_pitch(snd_health, random_range(.9, 1.1));
		audio_play_sound(snd_health, 5, false);
	}
	else if (other.power_id == 2) {
		value = 19;
		audio_sound_pitch(snd_score, random_range(.9, 1.1));
		audio_play_sound(snd_score, 5, false);
	}
	else if (other.power_id == 3) {
		obj_game.interval = min(obj_game.max_interval, obj_game.interval + 3);
		obj_game.fall_speed = max(obj_game.min_fall_speed, obj_game.fall_speed - 3);
		audio_sound_pitch(snd_slowdown, random_range(.9, 1.1));
		audio_play_sound(snd_slowdown, 5, false);
	}
}
audio_sound_pitch(snd_break, random_range(.9, 1.1));
audio_play_sound(snd_break, 5, false);
value += 1;
obj_game.player_score += value;

var spawnerid = choose(1, 2);

with (obj_point_spawner) {
	if (spawner_id == spawnerid) {
		var scoreobject = instance_create_layer(irandom_range(x, x + 25), y, "scores", obj_score);
		
		scoreobject.floating_speed = irandom_range(0.5, 4);
		scoreobject.value = value;
	}
}
	
instance_destroy(other);