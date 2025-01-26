// Variables de déplacement
walk_speed = 0.5; // Vitesse entre 1 et 3 pour un effet plus vivant UwU 💨
walk_timer = 0; // Durée de la marche
idle_timer = 0; // Durée du mode chill ✨
direction_angle = irandom(359); // Direction aléatoire initiale 🎯
is_walking = true; // Commence à marcher UwU

_hor = 0; // Mouvement horizontal
_ver = 0; // Mouvement vertical

// Sprite par défaut (regarde en bas pour dire bonjour UwU)
sprite_index = spr_bungisngis_bottom_walk;
