// Événement Draw
draw_self(); // Dessine l'objet principal

// Dessine l'émote si elle est active
if (emote_alpha > 0) {
    draw_sprite_ext(spr_love, 0, x, y - sprite_height / 2 - emote_y_offset, 1, 1, 0, c_white, emote_alpha);
}
