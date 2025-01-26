// action function is overridden with the action's specific role
action = function ()
{
    //obj_battle_manager.player_attack(obj_battle_player.data.damage);
    obj_battle_manager.start_qte_sequence();
    
    //obj_battle_manager.current_phase = BATTLE_PHASE.PLAYER_QTE;
}