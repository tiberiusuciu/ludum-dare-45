/// @description Insert description here
// You can write your code in this editor

if (room == room2) {
	if (active_columns == 0) {
		alarm[0] = interval;
		return;
	}

	var column_id = irandom_range(1, active_columns);

	var block;
	with (obj_spawner) {
		if (column_id == 1 && spawner_id == 1) {
			block = instance_create_layer(x, y, "Instances", obj_block);
		}
		if (column_id == 2 && spawner_id == 2) {
			block = instance_create_layer(x, y, "Instances", obj_block);
		}
		if (column_id == 3 && spawner_id == 3) {
			block = instance_create_layer(x, y, "Instances", obj_block);
		}
		if (column_id == 4 && spawner_id == 4) {
			block = instance_create_layer(x, y, "Instances", obj_block);
		}
		if (column_id == 5 && spawner_id == 5) {
			block = instance_create_layer(x, y, "Instances", obj_block);
		}
		if (column_id == 6 && spawner_id == 6) {
			block = instance_create_layer(x, y, "Instances", obj_block);
		}
		if (column_id == 7 && spawner_id == 7) {
			block = instance_create_layer(x, y, "Instances", obj_block);
		}
		if (column_id == 8 && spawner_id == 8) {
			block = instance_create_layer(x, y, "Instances", obj_block);
		}
	}

	block.block_id = column_id;


	alarm[0] = interval;
}