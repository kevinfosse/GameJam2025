dialog = [];
dialog[0] = "Default dialog."

handle_dialog = function() {
    if (!obj_dialog_manager.is_active) {
        start_dialog();
    } else if (obj_dialog_manager.current_page >= array_length(obj_dialog_manager.dialog_pages) - 1) {
        end_dialog();
    }
}

start_dialog = function() {
    with (obj_dialog_manager) {
        dialog_pages = other.dialog;
        current_page = 0;
        text_progress = 0;
        is_active = true;
    }
}

end_dialog = function() {
    obj_dialog_manager.is_active = false;
}