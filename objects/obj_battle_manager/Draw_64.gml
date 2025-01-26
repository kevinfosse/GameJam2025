// Logique du GUI des QTEs
if (current_phase = BATTLE_PHASE.PLAYER_QTE) {
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();
    var spacing = 100;  // Espacement entre les flèches
    
    // Calculer la position de départ pour centrer la séquence
    var start_x = gui_width/2 - (array_length(qte_sequence) * spacing)/2;
    var y_pos = gui_height/2;
    
    // Afficher toutes les flèches
    for (var i = 0; i < array_length(qte_sequence); i++) {
        var x_pos = start_x + (i * spacing);
        var key = qte_sequence[i];
        var alpha = (i == qte_current_index) ? 1 : 0.5;  // Touche actuelle plus brillante
        
        draw_set_alpha(alpha);
        
        // Dessiner la flèche selon la direction
        switch(key) {
            case vk_up:
                draw_sprite_ext(spr_arrow_up, 0, x_pos, y_pos, 4, 4, 0, c_white, 1);
                break;
            case vk_down:
                draw_sprite_ext(spr_arrow_down, 0, x_pos, y_pos, 4, 4, 0, c_white, 1);
                break;
            case vk_left:
                draw_sprite_ext(spr_arrow_left, 0, x_pos, y_pos, 4, 4, 0, c_white, 1);
                break;
            case vk_right:
                draw_sprite_ext(spr_arrow_right, 0, x_pos, y_pos, 4, 4, 0, c_white, 1);
                break;
        }
    }
    draw_set_alpha(1);
}