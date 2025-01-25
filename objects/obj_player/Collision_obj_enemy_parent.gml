//On collision with enemy, if not in battle, switch to battle scene. 
if (instance_exists(obj_battle_switcher)) exit;
    
var _switcher = instance_create_depth(0,0,0,obj_battle_switcher);

_switcher.player_data = self;