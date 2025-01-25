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


depth = -9999; // Keep dialog box on top
dialog_width = 640;
dialog_height = 120;
dialog_x = (display_get_gui_width() - dialog_width) / 2;
dialog_y = display_get_gui_height() - dialog_height - 20;
dialog_text = "";
is_active = false;
text_speed = 0.5;
dialog_pages = [
    "Bienvenue dans le jeu !",
    "Appuyez sur E pour continuer.",
    "Bonne chance dans votre aventure !"
];

current_page = 0;
text_progress = 0;