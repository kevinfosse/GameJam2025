for (var i = 0; i < array_length(fog_particles); i++) {
    var particle = fog_particles[i];

    // Déplacement horizontal
    particle.x += particle.speed;

    // Réinitialisation si hors de la room
    if (particle.x > room_width) {
        particle.x = -particle.width;
        particle.y = irandom(room_height);
    }

    // Mise à jour de la particule
    fog_particles[i] = particle;
}
