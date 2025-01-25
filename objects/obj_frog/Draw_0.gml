draw_self(); // Dessine le PNJ

if (dialogue_active) {
    // Récupérer les dimensions et la position du viewport
    var view_x = camera_get_view_x(view_camera[0]);
    var view_y = camera_get_view_y(view_camera[0]);
    var view_w = camera_get_view_width(view_camera[0]);
    var view_h = camera_get_view_height(view_camera[0]);

    // Dimensions ajustées de la boîte de dialogue (10% de la hauteur du viewport)
    var dialogue_box_height = max(40, view_h * 0.1); // Minimum 40 pixels
    var padding = 8; // Espacement interne
    var side_margin = 20; // Réduction de 20px de chaque côté

    // Position de la boîte
    var box_x = view_x + side_margin; // Décalage de 20px à gauche
    var box_y = view_y + view_h - dialogue_box_height; // En bas du viewport
    var box_width = view_w - (2 * side_margin); // Réduction totale de 40px en largeur

    // Dessiner le fond de la boîte
    draw_set_color(c_black); // Couleur de fond
    draw_rectangle(box_x, box_y, box_x + box_width, box_y + dialogue_box_height, false);

    // Dessiner la bordure de la boîte
    draw_set_alpha(1); // Pleine opacité
    draw_set_color(c_white); // Couleur de la bordure
    draw_rectangle(box_x, box_y, box_x + box_width, box_y + dialogue_box_height, true);

    // Dessiner le texte
    draw_set_font(fnt_small); // Police plus petite
    draw_set_color(c_white);
    draw_text(box_x + padding, box_y + padding, dialogue_text);
}
