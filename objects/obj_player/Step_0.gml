// Récupérer l'instance du dialog_manager
var dialog_manager = instance_exists(obj_dialog_manager) ? obj_dialog_manager : noone;

// Si dialog_manager existe et is_active est false, autoriser le déplacement
if (dialog_manager != noone && !dialog_manager.is_active) {
    var _hor = keyboard_check(ord("D")) - keyboard_check(ord("Q"));
    var _ver = keyboard_check(ord("S")) - keyboard_check(ord("Z"));
    
    if (keyboard_check_pressed(ord("M"))) {
        move_speed = 50;
    }
    else {
        move_speed = 1;
    }

    move_and_collide(_hor * move_speed, _ver * move_speed, 
        [tilemap, obj_arbre, obj_home, obj_home_roof, obj_arbre_mort, obj_feu_camp, obj_tente, obj_buche, obj_rocher], 
        undefined, undefined, undefined, move_speed, move_speed);

    // Gestion des sprites
    if (_hor != 0 || _ver != 0) {
        if (_ver > 0) {
            sprite_index = spr_player_walk_down;
        }
        else if (_ver < 0) {
            sprite_index = spr_player_walk_up;
        }
        else if (_hor > 0) {
            sprite_index = spr_player_walk_right;
        }
        else if (_hor < 0) {
            sprite_index = spr_player_walk_left;
        }
    } else {
        // Ajustement du sprite en idle
        if (sprite_index == spr_player_walk_right) {
            sprite_index = spr_player_idle_right;
        } 
        else if (sprite_index == spr_player_walk_left) {
            sprite_index = spr_player_idle_left;
        }
        else if (sprite_index == spr_player_walk_up) {
            sprite_index = spr_player_idle_up;
        }
        else if (sprite_index == spr_player_walk_down) {
            sprite_index = spr_player_idle_down;
        }
    }
}
