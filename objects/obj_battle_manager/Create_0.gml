// enemy_turn = 0;
// damage_to_enemy = 0;
// 
// qte_active = false;             // Si le QTE est en cours
// qte_sequence = [];              // Tableau qui contiendra la séquence de touches
// qte_current_index = 0;          // Index de la touche actuelle dans la séquence
// qte_timer = 0;                  // Timer pour la touche actuelle
// qte_time_per_key = 60;          // 1 seconde (60 frames) par touche
// qte_sequence_length = 4;        // Nombre de touches dans la séquence
// 
// player_attack = function(_damage) {
//     damage_to_enemy = _damage;
//     generate_qte_sequence();  // On commence le QTE avant d'appliquer les dégâts
//     // enemy_turn et alarm[0] seront définis après la fin du QTE
// }
// 
// check_for_end = function() 
// {
//     return (obj_battle_enemy.data.hp <= 0 || obj_battle_player.data.hp <= 0)
// }
// 
// generate_qte_sequence = function() {
//     qte_sequence = [];
//     var possible_keys = [vk_up, vk_down, vk_left, vk_right];
//     
//     repeat(qte_sequence_length) {
//         var random_key = possible_keys[irandom(array_length(possible_keys) - 1)];
//         array_push(qte_sequence, random_key);
//     }
//     
//     qte_current_index = 0;
//     qte_timer = 0;
//     qte_active = true;
// }

enum BATTLE_PHASE {
    PLAYER_TURN,
    PLAYER_QTE,
    ENEMY_TURN,
    END
}

current_phase = BATTLE_PHASE.PLAYER_TURN;
qte_sequence = []; // Stockera la séquence de flèches à reproduire
qte_current_index = 0;

function start_player_turn() {
    current_phase = BATTLE_PHASE.PLAYER_TURN;
    // Afficher les options d'attaque
}

function start_qte_sequence() {
    current_phase = BATTLE_PHASE.PLAYER_QTE;
    qte_sequence = generate_qte_sequence();
    qte_current_index = 0;
    // Afficher la séquence
}

function generate_qte_sequence() {
    var seq = [];
    var directions = [vk_up, vk_down, vk_left, vk_right];
    // Générer une séquence de 4 touches aléatoires
    repeat(4) {
        array_push(seq, directions[irandom(3)]);
    }
    return seq;
}

function deal_damage(attacker, target, success_rate = 1) {
    var damage = attacker.damage * success_rate;
    target.hp_current = max(0, target.hp_current - damage);
}

function check_entity_death(entity) {
    return entity.hp_current <= 0;
}

function handle_enemy_turn() {
    var player = instance_find(obj_battle_player, 0);
    var enemy = instance_find(obj_battle_enemy, 0);
    
    if (player != noone && enemy != noone) {
        // Calcul des dégâts avec variation de ±25%
        var damage_multiplier = random_range(0.75, 1.25);
        deal_damage(enemy, player, damage_multiplier);
        
        // Vérification de la mort du joueur
        if (check_entity_death(player)) {
            current_phase = BATTLE_PHASE.END;
        } else {
            current_phase = BATTLE_PHASE.PLAYER_TURN;
        }
    }
}