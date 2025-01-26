draw_self(); // Draw base sprite
if (loved) {
    var current_frame = floor(image_index); // Utilise l'image actuelle
    draw_sprite_ext(spr_love_1, current_frame, x, y, image_xscale, image_yscale, image_angle, c_white, lock_alpha);
}
