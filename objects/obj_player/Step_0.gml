var _hor = keyboard_check(ord("D")) - keyboard_check(ord("Q"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("Z"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);