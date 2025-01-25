if (distance_to_object(obj_player) < 32) { // Si le joueur est proche
    if (keyboard_check_pressed(ord("E"))) {   // Si le joueur appuie sur "E"
        if (target_room != noone) {       // Si une Room cible est définie
            room_goto(target_room);      // Aller à la Room cible
        } else {
            show_message("Aucune Room n'a été définie pour cet objet !");
        }
    }
}

// Oscillation autour de la position de base
x = base_x + sin(time) * amplitude_x; // Mouvement horizontal
y = base_y + cos(time) * amplitude_y; // Mouvement vertical

// Avancement du temps pour animer l'effet
time += speed;

// Effet de scintillement (opacité)
image_alpha = alpha_min + abs(sin(time * 0.5)) * (alpha_max - alpha_min);

// Effet de pulsation (taille)
image_xscale = scale_min + abs(sin(scale_time)) * (scale_max - scale_min);
image_yscale = image_xscale; // Uniformité dans les deux axes
scale_time += alpha_speed;   // Avancement du temps pour la pulsation