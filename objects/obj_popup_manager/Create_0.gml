
depth = -9999; // Keep dialog box on top
dialog_width = 640;
dialog_height = 120;
dialog_x = (display_get_gui_width() - dialog_width) / 2;
dialog_y = display_get_gui_height() - dialog_height - 20;
dialog_text = "";
current_page = 0;
is_active = false;
text_speed = 0.5;
text_progress = 0;
dialog_pages = [];
