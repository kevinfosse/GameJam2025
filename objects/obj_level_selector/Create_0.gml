// Room cible par défaut
target_room = "Room" // Valeur par défaut si aucune Room n'est définie

// Nom du niveau par défaut
level_name = "Niveau";

time = irandom(360);  // Décalage aléatoire pour un mouvement unique
amplitude_y = 3;      // Amplitude verticale (distance de flottement)
amplitude_x = 2;      // Amplitude horizontale (distance de flottement)
speed = 0.02;         // Vitesse du mouvement (petite valeur pour un effet fluide)
base_x = x;           // Position de base horizontale
base_y = y;           // Position de base verticale


alpha_min = 0.7;             // Opacité minimale
alpha_max = 1;               // Opacité maximale
alpha_speed = 0.03;          // Vitesse du scintillement
scale_min = 0.95;            // Taille minimale
scale_max = 1.05;            // Taille maximale
scale_time = irandom(360);   // Décalage pour l'effet de pulsation