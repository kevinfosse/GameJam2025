if (distance_to_object(obj_player) < 32) { // Si le joueur est proche
    if (keyboard_check_pressed(ord("E"))) {   // Si le joueur appuie sur "E"
        if (is_active) {  // Le dialogue est actif
            if (text_progress < string_length(dialog_pages[current_page])) {
                // Montrer le texte complet immédiatement
                text_progress = string_length(dialog_pages[current_page]);
            } else {
                // Passer à la page suivante
                current_page++;
                if (current_page >= array_length(dialog_pages)) {
                    is_active = false; // Fin du dialogue
                    if (target_room != noone) {  // Si une Room cible est définie
                        room_goto(target_room);  // Aller à la Room cible
                    } else {
                        show_message("Aucune Room n'a été définie pour cet objet !");
                    }
                } else {
                    text_progress = 0;
                }
            }
        } else {  // Le dialogue n'est pas actif
            is_active = true; // Activer le dialogue
            current_page = 0; // Commencer à la première page
            text_progress = 0; // Réinitialiser la progression du texte
        }
    }
}

// Affichage progressif du texte
if (is_active && text_progress < string_length(dialog_pages[current_page])) {
    text_progress += text_speed;
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
