if (room == rm_monde2) {
    shader_set(shader_dark);
    var uniform_darkness = shader_get_uniform(shader_dark, "darkness"); // Récupère la variable darkness
    shader_set_uniform_f(uniform_darkness, 0.75); // Régle l'assombrissement (0.75 = sombre à 25%)
    draw_self(); // Dessine le sprite avec le shader
    shader_reset(); // Réinitialise le shader
} else {
    draw_self(); // Dessine normalement si pas dans la room ciblée
}