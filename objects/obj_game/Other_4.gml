/// @description Insert description here
// You can write your code in this editor

if (room == room2 && !room0_music_playing) {
	room0_music_playing = true;
	audio_stop_sound(bg_difficulty);
	audio_stop_sound(bg_intro);
	audio_play_sound(bg_main, 7, true);
}

if (room == room0) {
	room0_music_playing = false;
	audio_stop_sound(bg_main);
	audio_stop_sound(bg_difficulty);
	audio_play_sound(bg_intro, 7, true);
}

if (room == room1) {
	room0_music_playing = false;
	audio_stop_sound(bg_main);
	audio_stop_sound(bg_intro);
	audio_play_sound(bg_difficulty, 7, true);
}