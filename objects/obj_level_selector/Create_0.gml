// Variables pour le dialogue
is_active = false; // Indique si le dialogue est actif
current_page = 0;  // Page actuelle
text_progress = 0; // Progression du texte affiché
text_speed = 0.5;  // Vitesse d'affichage du texte
dialog_pages = [
    "Bienvenue dans le jeu !",
    "Appuyez sur E pour continuer.",
    "Bonne chance dans votre aventure !"
]; // Liste des pages de dialogue

// Dimensions de la boîte de dialogue
dialog_width = 640;
dialog_height = 120;

// Calcul des positions par défaut
dialog_x = (display_get_gui_width() - dialog_width) / 2;
dialog_y = display_get_gui_height() - dialog_height - 20;

// Room cible par défaut
target_room = noone;

// Propriétés du joueur
player_proximity = 32; // Distance minimale pour activer le dialogue
