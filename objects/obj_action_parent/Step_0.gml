// Action buttons are transparent if not player turn
if (obj_battle_manager.current_phase != BATTLE_PHASE.PLAYER_TURN)
{
    image_alpha = 0.2;
}
else 
{
    image_alpha = 1;
}