// Dans obj_battle_switcher
spawn_player = function(_room, _x, _y) {
    room_goto(_room);
    
    // Détruire les instances existantes du joueur
    with(obj_player) {
        instance_destroy();
    }
    
    // Créer une nouvelle instance aux coordonnées spécifiées
    instance_create_layer(_x, _y, "Instances", obj_player);
}