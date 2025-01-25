if (is_active) {
    // Dessiner le fond de la boîte de dialogue
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(dialog_x, dialog_y, dialog_x + dialog_width, dialog_y + dialog_height, false);
    draw_set_alpha(1);

    // Dessiner le texte du dialogue
    draw_set_color(c_white);
    draw_set_font(fnt_dialog); // Assurez-vous que la police existe dans GameMaker
    var displayed_text = dialog_pages[current_page];
    draw_text_ext(dialog_x + 20, dialog_y + 20, displayed_text, 25, dialog_width - 40);
}
