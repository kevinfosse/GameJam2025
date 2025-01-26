hp_current = 0;
damage_base = 0;

// Méthode pour initialiser les stats
function initialize_stats(_hp, _damage) {
    hp_max = _hp;
    hp_current = hp_max;
    damage_base = _damage;
}

// Méthode pour recevoir des dégâts
function take_damage(amount) {
    hp_current = max(0, hp_current - amount);
    return hp_current <= 0; // Retourne true si mort
}