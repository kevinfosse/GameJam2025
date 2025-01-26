if (is_active) {
    if (mouse_check_button_pressed(mb_left)) {
        // Vérifier que current_page est dans les limites du tableau
        if (current_page < array_length(dialog_pages)) {
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
    }
    
    // Ajouter une vérification ici aussi
    if (current_page < array_length(dialog_pages)) {
        if (text_progress < string_length(dialog_pages[current_page])) {
            text_progress += text_speed;
        }
    }
}