/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_proggy);


if (room == room0) {
	draw_set_color(make_color_rgb(227, 94, 51));
	draw_text_transformed(room_width - 250, 50, "Ludum", 3, 3, 0);
	draw_set_color(make_color_rgb(227, 139, 48));
	draw_text_transformed(room_width - 160, 50, "Dare", 3, 3, 0);
	draw_set_color(make_color_rgb(250, 222, 55));
	draw_text_transformed(room_width - 85, 50, "45", 3, 3, 0);
	
	draw_set_color(c_white);

	draw_text_transformed(room_width - 250, 125, "Tiberiusuciu\nPresents:", 2, 2, 0);

	draw_set_color(make_color_rgb(60, 38, 190));
	draw_text_transformed(room_width - 250, 190, "Tiny", 4, 4, 0);
	draw_set_color(c_white);
	draw_text_transformed(room_width - 150, 190, "Beat", 4, 4, 0);
	
	var text01 = "The theme is:";
	var text02 = "Start with nothing";
	var text03 = "Start with nothing\nto do, and try to\nstay alive as long\nas possible in this\ndifficult growing\nenvironment!";
	var text04 = "Press <space>\nto start";

	draw_text_transformed(room_width - 250, 260, text01, 2, 2, 0);
	draw_text_transformed(room_width - 250, 280, text02, 2, 2, 0);
	draw_text_transformed(room_width - 250, 340, text03, 2, 2, 0);	
	
	var text05 = "Use the arrow keys\nto hit falling notes";
	
	draw_text_transformed(room_width - 250, 525, text05, 2, 2, 0);
	draw_text_transformed(room_width - 250, 625, text04, 2, 2, 0);
	//draw_text_transformed(room_width - 250, 675, "Press <m>\nto mute music", 2, 2, 0);
	
}

if (room == room1) {
	draw_text_transformed(room_width - 250, 50, "1 - EASY", 3, 3, 0);
	draw_text_transformed(room_width - 250, 100, "For beginners", 2, 2, 0);
	draw_text_transformed(room_width - 250, 150, "2 - MEDIUM", 3, 3, 0);
	draw_text_transformed(room_width - 250, 200, "How it was intended\nto be played", 2, 2, 0);
	draw_text_transformed(room_width - 250, 270, "3 - HARD", 3, 3, 0);
	draw_text_transformed(room_width - 250, 320, "When you just\ncan't get enough", 2, 2, 0);
	
	draw_text_transformed(room_width - 250, 500, "Please choose\n1, 2 or 3", 2, 2, 0);
}

if (room == room2) {
	
	draw_text_transformed(room_width - 250, 100, "SCORE(" + difficulty + ")", 3, 3, 0);
	draw_text_transformed(room_width - 250, 140, string(obj_game.player_score), 4, 4, 0);

	draw_text_transformed(room_width - 250, 220, "LIFE", 3, 3, 0);
	draw_text_transformed(room_width - 250, 260, string(obj_game.player_health), 4, 4, 0);

	draw_text_transformed(room_width - 250, 340, "NOTE INTERVAL", 3, 3, 0);
	draw_text_transformed(room_width - 250, 380, string(obj_game.interval), 4, 4, 0);

	draw_text_transformed(room_width - 250, 460, "NOTE SPEED", 3, 3, 0);
	draw_text_transformed(room_width - 250, 500, string(obj_game.fall_speed), 4, 4, 0);
	
	draw_sprite_ext(spr_block, 0, room_width - 250, 570, .5, .5, 0, c_white, 1);
	draw_text_transformed(room_width - 210, 582, "Regular +1 point", 1, 1, 0);

	draw_sprite_ext(spr_block, 1, room_width - 250, 620, .5, .5, 0, c_white, 1);
	draw_text_transformed(room_width - 210, 632, "Restores 5 health", 1, 1, 0);

	draw_sprite_ext(spr_block, 2, room_width - 250, 670, .5, .5, 0, c_white, 1);
	draw_text_transformed(room_width - 210, 682, "Gives out 20 points", 1, 1, 0);

	draw_sprite_ext(spr_block, 3, room_width - 250, 720, .5, .5, 0, c_white, 1);
	draw_text_transformed(room_width - 210, 732, "Temporary slow down", 1, 1, 0);
}

if (room == room3) {
	draw_text_transformed_color(room_width - 250, 20, "Game Over", 2, 2, 0, c_red, c_red, c_red, c_red, 1);
	
	draw_text_transformed(room_width - 250, 40, "SCORE (" + difficulty + ")", 2, 2, 0);
	draw_text_transformed(room_width - 250, 60, string(obj_game.player_score), 2, 2, 0);
	
	draw_text_transformed_color(room_width - 250, 100, "Thank you for\nplaying my Ludum\nDare 45 entry", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_color(room_width - 250, 210, "Made by\n@SuciuTiberius", 2, 2, 0, c_white, c_white, c_white, c_white, 1);

	draw_text_transformed_color(room_width - 250, 300, "Special thanks to\nfriends and\nfamily for\nthe support", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_color(room_width - 250, 430, "Honoroable mentions\ngoes to my\nsupportive\ngirlfriend :D", 2, 2, 0, c_white, c_white, c_white, c_white, 1);

	draw_text_transformed_color(room_width - 250, 560, "Press <escape> to\nquit or\npress <r>\nto start again", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_color(room_width - 250, 690, "Press <enter> to\ngo back to\nmain menu", 2, 2, 0, c_white, c_white, c_white, c_white, 1);

}

if (play_fade &&  room == room2) {
	if (fade_amount < 1.25) {
		draw_set_alpha(fade_amount);
		draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		fade_amount += .0075;
	}
	else {
		room_goto_next();
	}
}

if (play_fade && (room == room0 || room == room3)) {
	if (fade_amount > 0) {
		draw_set_alpha(fade_amount);
		draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		fade_amount -= .0075;
	}
	else {
		play_fade = false;
	}
}
