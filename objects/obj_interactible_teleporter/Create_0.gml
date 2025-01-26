event_inherited();

change_room = function () {
    room_goto(target_room);
}

handle_dialog = function() {
    if (!obj_dialog_manager.is_active) {
        start_dialog();
    } else if (obj_dialog_manager.current_page >= array_length(obj_dialog_manager.dialog_pages) - 1) {
        end_dialog();
        change_room();
    }
}