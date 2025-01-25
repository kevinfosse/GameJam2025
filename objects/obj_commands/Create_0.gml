// Vérifie s'il existe déjà une instance
if (instance_number(obj_commands) > 1) {
    instance_destroy(); // Détruit les instances supplémentaires
}


// Fullscreen par défaut
window_set_fullscreen(true);
// Ajuster la résolution si nécessaire
display_set_gui_size(display_get_width(), display_get_height());