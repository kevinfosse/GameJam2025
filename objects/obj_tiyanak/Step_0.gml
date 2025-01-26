if (is_walking) {
    // Vérifie l'easter egg : touches "A" + "P"
    if (keyboard_check(ord("A")) && keyboard_check(ord("P"))) {
        walk_speed = irandom_range(5, 10); // Vitesse boostée entre 5 et 10
    } else {
        walk_speed = 0.5 // Vitesse normale
    }

    // La vache est en train de marcher
    walk_timer -= 1;
    if (walk_timer <= 0) {
        // Passe en mode chill ✨
        is_walking = false;
        sprite_index = spr_tiyanak_bottom_walk; // Pose par défaut pendant l'arrêt
        idle_timer = irandom_range(30, 120); // Durée de pause
    } else {
        // Calcul pour le déplacement kawaii >w<
        direction_angle += irandom_range(-10, 10); // Variation dans la direction
        _hor = lengthdir_x(walk_speed, direction_angle);
        _ver = lengthdir_y(walk_speed, direction_angle);

        // Prochaines positions
        var next_x = x + _hor;
        var next_y = y + _ver;

        // Vérifie les collisions avec `obj_rocher`
        if (!place_meeting(next_x, y, [tilemap, obj_rocher_lvl3, obj_stalactite])) {
            x = next_x; // Déplacement horizontal si pas de collision
        } else {
            direction_angle = 180 - direction_angle; // Change la direction si collision
        }

        if (!place_meeting(x, next_y, [tilemap, obj_rocher_lvl3, obj_stalactite])) {
            y = next_y; // Déplacement vertical si pas de collision
        } else {
            direction_angle = 360 - direction_angle; // Change la direction si collision
        }

        // Détermine le sprite en fonction de la direction
        if (_ver > 0) {
            sprite_index = spr_tiyanak_bottom_walk; // Marche vers le bas
        } else if (_ver < 0) {
            sprite_index = spr_tiyanak_top_walk; // Marche vers le haut
        } else if (_hor > 0) {
            sprite_index = spr_tiyanak_right_walk; // Marche vers la droite
        } else if (_hor < 0) {
            sprite_index = spr_tiyanak_left_walk; // Marche vers la gauche
        }
    }
} else {
    // Mode idle UwU
    idle_timer -= 1;
    if (idle_timer <= 0) {
        // Retourne en mode marche
        is_walking = true;
        walk_timer = irandom_range(60, 180); // Durée de marche
        direction_angle = irandom(359); // Nouvelle direction
    }
}
