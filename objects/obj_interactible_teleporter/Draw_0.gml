draw_self(); // Draw base sprite
if (locked) {
    draw_sprite_ext(spr_lock_layer, 0, x, y, image_xscale, image_yscale, image_angle, c_white, lock_alpha);
}
