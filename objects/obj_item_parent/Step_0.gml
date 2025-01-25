// In obj_npc (Step Event)
if (distance_to_object(obj_player) < 10) {
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

            room_goto(rm_battle);
        }
    }
}