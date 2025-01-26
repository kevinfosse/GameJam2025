// if (instance_exists(obj_battle_switcher)) exit;
    
// var _switcher = instance_create_depth(0, 0, 0, obj_battle_switcher);
// _switcher.player_data = self;
// _switcher.enemy_data = other;
// _switcher.original_room = room;


if (place_meeting(x, y, obj_player) && !is_transitioning) {
    is_transitioning = true;
    global.return_room = room;
    global.current_boss = boss_type;
    global.battle_background = background;
    
    // Stocke les coordonnées du nouveau spawn s'il existe

    global.return_x = new_spawn.x;
    global.return_y = new_spawn.y;
    global.song = audio;

}