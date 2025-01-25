for (var i = 0; i < array_length(fog_particles); i++) {
    var particle = fog_particles[i];

    // Couleur et opacité
    draw_set_color(c_white);          // Couleur blanche
    draw_set_alpha(particle.alpha);  // Transparence

    // Dessine le rectangle principal
    draw_rectangle_color(
        particle.x,
        particle.y,
        particle.x + particle.width,
        particle.y + particle.height,
        c_white, c_white, c_white, c_white,
        false // Pas de contour
    );

    // Ajouter des couches floues autour
    for (var blur = 1; blur <= 5; blur++) {
        draw_set_alpha(particle.alpha / (blur + 1)); // Réduit l'opacité progressivement
        draw_rectangle_color(
            particle.x - blur * 5,
            particle.y - blur * 3,
            particle.x + particle.width + blur * 5,
            particle.y + particle.height + blur * 3,
            c_white, c_white, c_white, c_white,
            false
        );
    }
}
draw_set_alpha(1); // Réinitialise l'opacité
