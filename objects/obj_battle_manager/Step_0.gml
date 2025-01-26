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