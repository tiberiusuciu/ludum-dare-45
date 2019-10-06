/// @description Insert description here

block_id = noone;

has_power = irandom_range(1, 100) >= obj_game.powerup_chance;

power_id = noone;
image_speed = 0;

if (has_power) {
	power_id = irandom_range(0, 3);
	image_index = power_id;
}