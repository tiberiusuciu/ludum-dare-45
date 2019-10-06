/// @description Insert description here
// You can write your code in this editor

var cloud = instance_create_layer(x, irandom_range(y-32, y+5), "bg_objects", obj_cloud);

cloud.image_xscale = irandom_range(1, 2);
cloud.image_yscale = irandom_range(1, 2);

cloud.cloud_speed = irandom_range(1, 4);

cloud.image_alpha = irandom_range(.5, 1);


alarm[0] = irandom_range(60, 180);