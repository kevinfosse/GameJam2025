// if (qte_active) {
//     qte_timer++;
//     
//     // Vérifier si le joueur appuie sur une touche
//     if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down) || 
//         keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) {
//         
//         var pressed_key = keyboard_lastkey;
//         
//         // Si c'est la bonne touche
//         if (pressed_key == qte_sequence[qte_current_index]) {
//             qte_current_index++;
//             qte_timer = 0;
//             
//             // Si on a terminé la séquence
//             if (qte_current_index >= array_length(qte_sequence)) {
//                 qte_active = false;
//                 enemy_turn = 1;
//                 alarm[0] = 40;
//             }
//         } else {
//             // Mauvaise touche : on termine le QTE avec une pénalité
//             damage_to_enemy *= 0.5;  // Réduction des dégâts de 50%
//             qte_active = false;
//             enemy_turn = 1;
//             alarm[0] = 40;
//         }
//     }
//     
//     // Si on dépasse le temps imparti pour la touche actuelle
//     if (qte_timer >= qte_time_per_key) {
//         // Échec du QTE par timeout
//         damage_to_enemy *= 0.5;  // Réduction des dégâts de 50%
//         qte_active = false;
//         enemy_turn = 1;
//         alarm[0] = 40;
//     }
// }

if (current_phase == BATTLE_PHASE.PLAYER_QTE) {
    if (keyboard_check_pressed(vk_anykey)) {
        var correct_key = qte_sequence[qte_current_index];
        if (keyboard_check_pressed(correct_key)) {
            qte_current_index++;
            if (qte_current_index >= array_length(qte_sequence)) {
                // QTE réussi - Dégâts maximum
                var enemy = instance_find(obj_battle_enemy, 0);
                if (enemy != noone) {
                    deal_damage(obj_battle_player, enemy, 1);
                    
                    // Vérification de la mort de l'ennemi
                    if (check_entity_death(enemy)) {
                        current_phase = BATTLE_PHASE.END;
                    } else {
                        current_phase = BATTLE_PHASE.ENEMY_TURN;
                    }
                }
            }
        } else {
            // QTE raté - Dégâts réduits
            var enemy = instance_find(obj_battle_enemy, 0);
            if (enemy != noone) {
                deal_damage(obj_battle_player, enemy, 0.5);
                
                // Vérification de la mort de l'ennemi
                if (check_entity_death(enemy)) {
                    current_phase = BATTLE_PHASE.END;
                } else {
                    current_phase = BATTLE_PHASE.ENEMY_TURN;
                }
            }
        }
    }
}

if (current_phase == BATTLE_PHASE.ENEMY_TURN) {
    handle_enemy_turn();
}

if (current_phase == BATTLE_PHASE.END) {
    obj_battle_switcher.spawn_player(global.return_room, 657, 254);
    //obj_battle_switcher.spawn_player(global.return_room, global.return_x, global.return_y);
}