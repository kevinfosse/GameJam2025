// if (instance_exists(obj_battle_switcher)) exit;
    
// var _switcher = instance_create_depth(0, 0, 0, obj_battle_switcher);
// _switcher.player_data = self;
// _switcher.enemy_data = other;
// _switcher.original_room = room;

// room_goto(rm_battle);

if (place_meeting(x, y, obj_player)) {
    global.current_boss_type = boss_type;  // Stocke le type de boss
    room_goto(boss_room);
}