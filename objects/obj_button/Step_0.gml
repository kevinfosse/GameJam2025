
    if(button_action == "play") {
      sprite_index=bg_btn_jouer
    } else if(button_action == "quit") {
        sprite_index=bg_btn_quitter
    }


// Vérifier si la souris est sur le bouton
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    is_hovered = true;
    // Si clic gauche
    if (mouse_check_button_pressed(mb_left)) {
        if (button_action == "play") {
            room_goto(rm_hub); // Change la room vers le hub
        } else if (button_action == "quit") {
            game_end(); // Quitte le jeu
        }
    }
} else {
    is_hovered = false;
}
