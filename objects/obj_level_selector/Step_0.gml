if (distance_to_object(obj_player) < 32) { // Si le joueur est proche
    if (keyboard_check_pressed(ord("E"))) {   // Si le joueur appuie sur "E"
        if (target_room != noone) {       // Si une Room cible est définie
            room_goto(target_room);      // Aller à la Room cible
        } else {
            show_message("Aucune Room n'a été définie pour cet objet !");
        }
    }
}