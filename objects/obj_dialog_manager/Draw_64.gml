if (is_active && current_page < array_length(dialog_pages)) {
    // Draw dialog box
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(dialog_x, dialog_y, dialog_x + dialog_width, dialog_y + dialog_height, false);
    draw_set_alpha(1);
    
    // Draw text
    draw_set_color(c_white);
    draw_set_font(fnt_dialog);
    var displayed_text = string_copy(dialog_pages[current_page], 1, text_progress);
    draw_text_ext(dialog_x + 20, dialog_y + 20, displayed_text, 25, dialog_width - 40);
}