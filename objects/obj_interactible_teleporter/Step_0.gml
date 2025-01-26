// Inherit the parent event
event_inherited();
// Mouvement vertical dynamique mais fluide
y = start_y + sin(current_time * float_speed_y + offset_y) * float_amplitude_y;

// Mouvement horizontal dynamique
x = start_x + cos(current_time * float_speed_x + offset_x) * float_amplitude_x;

// Variation de taille naturelle
image_xscale = original_scale + sin(current_time * float_speed_size + offset_size) * float_amplitude_size;
image_yscale = image_xscale; // Taille uniforme

// Empêcher des mouvements trop erratiques (optionnel)
if (image_xscale < original_scale * 0.7) image_xscale = original_scale * 0.7;
if (image_xscale > original_scale * 1.3) image_xscale = original_scale * 1.3;

if (locked) {
    lock_alpha = abs(sin(current_time / 1000));
} else {
    lock_alpha = 0;
}