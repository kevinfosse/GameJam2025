// Gestion du temps de marche ou d'arrêt
if (is_walking) {
    // La vache est en train de marcher
    walk_timer -= 1;
    if (walk_timer <= 0) {
        // Passe en mode idle
        is_walking = false;
        sprite_index = sp_cow_idle;
        idle_timer = irandom_range(30, 120); // Durée d'arrêt (30 à 120 frames)
    } else {
        // Déplacement
        var next_x = x + lengthdir_x(walk_speed, direction_angle);
        var next_y = y + lengthdir_y(walk_speed, direction_angle);

        // Gestion des collisions avec les bordures
        if (next_x < 0 || next_x > room_width) {
            direction_angle = 180 - direction_angle; // Inverser horizontalement
        }
        if (next_y < 0 || next_y > room_height) {
            direction_angle = 360 - direction_angle; // Inverser verticalement
        }
        direction_angle = direction_angle mod 360; // Garder l'angle dans la plage [0, 359]

        // Appliquer le déplacement
        x += lengthdir_x(walk_speed, direction_angle);
        y += lengthdir_y(walk_speed, direction_angle);
    }
} else {
    // La vache est en mode idle
    idle_timer -= 1;
    if (idle_timer <= 0) {
        // Passe en mode marche
        is_walking = true;
        sprite_index = sp_cow_walk;
        walk_timer = irandom_range(60, 180); // Durée de marche (60 à 180 frames)
        direction_angle = irandom(359); // Nouvelle direction aléatoire
    }
}
