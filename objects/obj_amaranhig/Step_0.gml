if (is_walking) {
    // La vache est en train de marcher UwU
    walk_timer -= 1;
    if (walk_timer <= 0) {
        // Passe en mode chill ✨
        is_walking = false;
        sprite_index = sp_amaranhig_bottom; // Pose par défaut pendant l'arrêt
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
        if (!place_meeting(next_x, y, obj_rocher)) {
            x = next_x; // Déplacement horizontal si pas de collision
        } else {
            direction_angle = 180 - direction_angle; // Change la direction si collision
        }

        if (!place_meeting(x, next_y, obj_rocher)) {
            y = next_y; // Déplacement vertical si pas de collision
        } else {
            direction_angle = 360 - direction_angle; // Change la direction si collision
        }

        // Détermine le sprite en fonction de la direction
        if (_ver > 0) {
            sprite_index = sp_amaranhig_bottom; // Marche vers le bas
        } else if (_ver < 0) {
            sprite_index = sp_amaranhig_top; // Marche vers le haut
        } else if (_hor > 0) {
            sprite_index = sp_amaranhig_right; // Marche vers la droite
        } else if (_hor < 0) {
            sprite_index = sp_amaranhig_left; // Marche vers la gauche
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
