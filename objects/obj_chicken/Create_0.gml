// Variables pour le mouvement
walk_speed = 0.2; // Vitesse de marche
walk_timer = 0; // Temps restant pour marcher
idle_timer = 0; // Temps restant pour s'arrêter
direction_angle = irandom(359); // Angle aléatoire de déplacement

// Initialiser en mode "idle" ou "marche"
is_walking = true; // La vache commence en marchant
sprite_index = sp_chicken_walk; // Sprite par défaut
