// Vérifier si le joueur est proche de l'objet
if (distance_to_object(obj_player) < player_proximity) {
    is_active = true; // Active la boîte de dialogue

    // Si le joueur appuie sur "E" et que le dialogue est actif
    if (keyboard_check_pressed(ord("E"))) {
        if (current_page >= array_length(dialog_pages) - 1) {
            // Si c'est la dernière page du dialogue
            if (target_room != noone) {

                room_goto(target_room); // Entrer dans la room cible
            } else {
                show_message("Aucune Room n'a été définie !");
            }
        } else {
            // Passer à la page suivante
            current_page++;
        }
    }
} else {
    is_active = false; // Désactiver la boîte de dialogue si le joueur s'éloigne
    current_page = 0; // Réinitialiser le dialogue
}
