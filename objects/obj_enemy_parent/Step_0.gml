// Si le joueur appuie sur "E" en étant suffisament proche d'un adversaire, lance le combat.
if (distance_to_object(obj_player) < 32) { // Si le joueur est proche
    if (keyboard_check_pressed(ord("E"))) {   // Si le joueur appuie sur "E"
        //On collision with enemy, if not in battle, switch to battle scene. 
        if (instance_exists(obj_battle_switcher)) exit;
            
        var _switcher = instance_create_depth(0,0,0,obj_battle_switcher);
        
        _switcher.player_data = self;
        _switcher.enemy_data = other;
        _switcher.original_room = room;
        
        room_goto(rm_battle);
    }
}