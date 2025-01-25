// Fullscreen si F11 entré
if (keyboard_check_pressed(vk_f11)) {
    var fullscreen = window_get_fullscreen();
    window_set_fullscreen(!fullscreen);
}