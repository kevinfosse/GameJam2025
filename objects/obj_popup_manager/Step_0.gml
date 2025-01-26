if (is_active) {
    if (mouse_check_button_pressed(mb_left)) {
        if (text_progress < string_length(dialog_pages[current_page])) {
            // Show full text immediately
            text_progress = string_length(dialog_pages[current_page]);
        } else {
            // Move to next page
            current_page++;
            if (current_page >= array_length(dialog_pages)) {
                is_active = false;
            } else {
                text_progress = 0;
            }
        }
    }
    
    // Gradually reveal text
    if (text_progress < string_length(dialog_pages[current_page])) {
        text_progress += text_speed;
    }
}
