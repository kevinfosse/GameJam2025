// Inherit the parent event
event_inherited();

if (locked) {
    lock_alpha = abs(sin(current_time / 1000));
} else {
    lock_alpha = 0;
}