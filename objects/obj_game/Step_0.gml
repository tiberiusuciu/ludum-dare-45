/// @description Insert description here
// You can write your code in this editor


//keyboard_check_pressed()

if (room == room0) {
	if (keyboard_check_pressed(vk_space)) {
		room_goto_next();
	}
}

if (room == room1) {
	if (keyboard_check_pressed(ord("1")) || keyboard_check_pressed(ord("2")) || keyboard_check_pressed(ord("3"))) {
		alarm[0] = interval;
		alarm[1] = difficulty_increase;
		
		if (keyboard_check_pressed(ord("1"))) {
			powerup_chance = 80;
			max_powerup_chance = 85;
			player_starting_health = 100;
			player_health = player_starting_health;
			player_score = 0;
			min_fall_speed = 5;
			fall_speed = 10;
			max_fall_speed = 14;
			
			interval = 30;
			min_interval = 15;
			max_interval = 35;	
			
			difficulty_increase = 350;
		
			active_columns = 0;
			max_columns = 3;
			
			play_death_sound = false;
		
			play_fade = false;
			fade_amount = 0;
			
			difficulty = "EASY";
		}
		
		if (keyboard_check_pressed(ord("2"))) {
			powerup_chance = 85;
			max_powerup_chance = 95;
			player_starting_health = 50;
			player_health = player_starting_health;
			player_score = 0;
			min_fall_speed = 5;
			fall_speed = 10;
			max_fall_speed = 17;
			
			interval = 30;
			min_interval = 10;
			max_interval = 30;	
			
			difficulty_increase = 300;
		
			active_columns = 0;
			max_columns = 3;
			
			play_death_sound = false;
		
			play_fade = false;
			fade_amount = 0;
			
			difficulty = "MEDIUM";
		}
		
		if (keyboard_check_pressed(ord("3"))) {
			powerup_chance = 90;
			max_powerup_chance = 98;
			player_starting_health = 25;
			player_health = player_starting_health;
			player_score = 0;
			min_fall_speed = 13;
			fall_speed = 13;
			max_fall_speed = 19;
			
			interval = 30;
			min_interval = 8;
			max_interval = 30;	
			
			difficulty_increase = 250;
		
			active_columns = 0;
			max_columns = 3;
			
			play_death_sound = false;
		
			play_fade = false;
			fade_amount = 0;
			
			difficulty = "HARD";
		}
		room_goto_next();
	}
}

if (room == room2) {
	if (active_columns >= 1 && !play_fade) {
		num1 = keyboard_check_pressed(vk_left);
	}

	if (active_columns >= 2 && !play_fade) {
		num2 = keyboard_check_pressed(vk_up);
	}

	if (active_columns >= 3 && !play_fade) {
		num3 = keyboard_check_pressed(vk_right);
	}


	if (player_health <= 0) {
	
		if (!play_death_sound) {
			play_death_sound = true;
			audio_sound_pitch(snd_game_over, random_range(.9, 1.1));
			audio_play_sound(snd_game_over, 5, false);
		}
		
		if (!play_fade) {
		 play_fade = true;
		}
	}
}

if (room == room3) {
	if (keyboard_check_pressed(vk_escape)) {
		game_end();
	}
	else if (keyboard_check_pressed(ord("R"))) {
		
		powerup_chance = 85;
		player_health = player_starting_health;
		player_score = 0;
		fall_speed = 10;
		interval = 30;

		active_columns = 0;

		play_death_sound = false;

		play_fade = false;
		fade_amount = 0;

		alarm[0] = interval;
		alarm[1] = difficulty_increase;
		
		room_goto(room2);
	}
	else if (keyboard_check_pressed(vk_enter)) {
		room0_music_playing = false;
		room_goto(room0);
	}
}