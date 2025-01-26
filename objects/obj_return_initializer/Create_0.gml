if (variable_global_exists("return_x") && variable_global_exists("return_y")) {
    with (obj_player) {
        x = global.return_x;
        y = global.return_y;
    }
    
    // Nettoyage
    global.return_x = noone;
    global.return_y = noone;
}

instance_destroy();
