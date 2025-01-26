// obj_battle_initializer - Create Event
if (instance_exists(obj_battle_enemy)) {
instance_destroy(obj_battle_enemy);
}

if (variable_global_exists("current_boss")) {
var boss = instance_create_layer(
    room_width * 2/3,
    room_height/2,
    "Instances",
    global.current_boss
);
boss.image_xscale = 2;
boss.image_yscale = 2;
}

global.current_boss = noone;
instance_destroy();
