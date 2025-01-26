// Barre de vie
draw_self();

var _x = xstart - 25;
var _y = ystart + 30;
var _w = 50;
var _h = 9;

draw_sprite_stretched(spr_box, 0 , _x, _y, _w, _h);
draw_sprite_stretched_ext(spr_box, 0 , _x, _y, _w * (hp_current / hp_max), _h, c_green, 1);