// In obj_npc (Step Event)
if (distance_to_object(obj_player) < 32) {
    if (keyboard_check_pressed(ord("E"))) {
        if (!obj_dialog_manager.is_active) {
            // Start dialog
            with (obj_dialog_manager) {
                dialog_pages = other.dialog;
                current_page = 0;
                text_progress = 0;
                is_active = true;
            }
        } else if (obj_dialog_manager.current_page >= array_length(obj_dialog_manager.dialog_pages) - 1) {
            // Dialog finished, start battle
            if (instance_exists(obj_battle_switcher)) exit;
            
            var _switcher = instance_create_depth(0, 0, 0, obj_battle_switcher);
            _switcher.player_data = self;
            _switcher.enemy_data = other;
            _switcher.original_room = room;
            
            room_goto(rm_battle);
        }
    }
}

