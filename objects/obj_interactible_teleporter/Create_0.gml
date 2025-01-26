event_inherited();


lock_alpha = 1;


start_x = x;
start_y = y;


float_speed_y = random_range(0.001, 0.004); 
float_speed_x = random_range(0.001, 0.003); 
float_speed_size = random_range(0.001, 0.002); 

float_amplitude_y = random_range(1, 5); 
float_amplitude_x = random_range(2, 4); 
float_amplitude_size = random_range(0.2, 0.4); 


offset_y = random(1000); 
offset_x = random(1000); 
offset_size = random(1000); 

// Taille de base
original_scale = image_xscale;



change_room = function () {
    room_goto(target_room);
}

handle_dialog = function() {
    if (!obj_dialog_manager.is_active) {
        start_dialog();
    } else if (obj_dialog_manager.current_page >= array_length(obj_dialog_manager.dialog_pages) - 1) {
        end_dialog();
        if (!locked)
            change_room();
    }
}