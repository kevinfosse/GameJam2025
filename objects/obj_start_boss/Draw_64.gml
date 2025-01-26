if (is_transitioning) {
    transition_alpha = min(transition_alpha + 0.02, 1);
    draw_set_alpha(transition_alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
    
    if (transition_alpha >= 1) {
        room_goto(boss_room);
    }
}