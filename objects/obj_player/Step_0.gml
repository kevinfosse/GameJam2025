// Vérifier si un dialogue est actif
var dialogue_active_global = false;

with (obj_frog) {
    if (dialogue_active) {
        dialogue_active_global = true;
		depth = -y;
    }
}

// Si aucun dialogue actif, autoriser les mouvements
if (!dialogue_active_global) {
    // Gestion des inputs horizontaux et verticaux
    var _hor = keyboard_check(ord("D")) - keyboard_check(ord("Q"));
    var _ver = keyboard_check(ord("S")) - keyboard_check(ord("Z"));

    // Déplacement et collision
    move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, tilemap2], undefined, undefined, undefined, move_speed, move_speed);

    // Animation selon la direction
    if (_hor != 0 || _ver != 0) {
        if (_ver > 0) {
            sprite_index = spr_player_walk_down;
        } else if (_ver < 0) {
            sprite_index = spr_player_walk_up;
        } else if (_hor > 0) {
            sprite_index = spr_player_walk_right;
        } else if (_hor < 0) {
            sprite_index = spr_player_walk_left;
        }
    } else {
        // Passer à l'animation idle si aucune touche pressée
        if (sprite_index == spr_player_walk_right) {
            sprite_index = spr_player_idle_right;
        } else if (sprite_index == spr_player_walk_left) {
            sprite_index = spr_player_idle_left;
        } else if (sprite_index == spr_player_walk_up) {
            sprite_index = spr_player_idle_up;
        } else if (sprite_index == spr_player_walk_down) {
            sprite_index = spr_player_idle_down;
        }
    }
} else {
    // Animation idle si un dialogue est actif (arrêt du mouvement)
    if (sprite_index == spr_player_walk_right) {
        sprite_index = spr_player_idle_right;
    } else if (sprite_index == spr_player_walk_left) {
        sprite_index = spr_player_idle_left;
    } else if (sprite_index == spr_player_walk_up) {
        sprite_index = spr_player_idle_up;
    } else if (sprite_index == spr_player_walk_down) {
        sprite_index = spr_player_idle_down;
    }
}
