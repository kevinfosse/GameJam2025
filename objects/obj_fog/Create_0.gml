// Nombre de particules de brouillard
fog_particles = [];
num_particles = 100; // Plus de particules pour un effet dense

// Dimensions de la room
room_width = room_width;
room_height = room_height;

// Génération des particules
for (var i = 0; i < num_particles; i++) {
    var particle = {
        x: irandom(room_width),
        y: irandom(room_height),
        speed: random_range(0.1, 0.5), // Déplacement lent
        alpha: random_range(0.05, 0.1), // Opacité légère
        width: random_range(100, 300), // Largeur étendue
        height: random_range(50, 200) // Hauteur étendue
    };
    array_push(fog_particles, particle);
}
