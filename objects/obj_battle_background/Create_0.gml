//depth = 1000; 

if (variable_global_exists("battle_background") && global.battle_background != noone) {
    background_sprite = global.battle_background;
    global.battle_background = noone;  // Nettoyage
} else {
    background_sprite = spr_battle_background_1;  // Background par défaut
}

layer_background_change(layer_background_get_id(layer_get_id("Background")), background_sprite);