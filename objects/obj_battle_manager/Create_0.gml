enemy_turn = 0;
damage_to_enemy = 0;

qte_active = false;                  // Si le QTE est en cours
qte_sequence = [];                   // Tableau qui contiendra la séquence de touches
qte_current_index = 0;              // Index de la touche actuelle dans la séquence
qte_timer = 0;                      // Timer pour la touche actuelle
qte_time_per_key = 60;             // 1 seconde (60 frames) par touche
qte_sequence_length = 4;            // Nombre de touches dans la séquence

player_attack = function(_damage) {
    damage_to_enemy = _damage;
    generate_qte_sequence();  // On commence le QTE avant d'appliquer les dégâts
    // enemy_turn et alarm[0] seront définis après la fin du QTE
}

check_for_end = function() 
{
    return (obj_battle_enemy.data.hp <= 0 || obj_battle_player.data.hp <= 0)
}

generate_qte_sequence = function() {
    qte_sequence = [];
    var possible_keys = [vk_up, vk_down, vk_left, vk_right];
    
    repeat(qte_sequence_length) {
        var random_key = possible_keys[irandom(array_length(possible_keys) - 1)];
        array_push(qte_sequence, random_key);
    }
    
    qte_current_index = 0;
    qte_timer = 0;
    qte_active = true;
}