if (keyboard_check_pressed(ord("E"))) {
    dialogue_active = !dialogue_active; // Alterne entre actif/inactif
    dialogue_text = "Nique ta mère."; // Exemple de texte
    show_debug_message("Dialogue actif : " + string(dialogue_active));
}

show_debug_message("Viewport W: " + string(view_wview[0]) + " H: " + string(view_hview[0]));
show_debug_message("Camera Position: (" + string(camera_get_view_x(view_camera[0])) + ", " + string(camera_get_view_y(view_camera[0])) + ")");

if (dialogue_active) {
    depth = -1000; // Affiche la boîte devant tout
} else {
    depth = 0; // Rétablit la profondeur par défaut
}