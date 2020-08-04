if(global.gates[| gate_index] != undefined)
{
	open = global.gates[| gate_index];
}
else
{
	global.gates[| gate_index] = false;
}

if(reverse)
{
	switch(open)
	{
		case true:
			open = false;
			break;
			
		case false:
			open = true;
			break;
	}
}

if(open)
{
	image_alpha = 1;
	image_speed = 1;
	
	mask_index = spr_Zapper;
}
else
{
	image_alpha = 0.5;
	image_speed = 0;
	
	mask_index = spr_none;
}

if(place_meeting(x, y, obj_Player) && obj_Player.move_state != player_states.dead && open)
{
	scr_create_explosion(obj_Player.x, obj_Player.y);
	
	obj_Player.move_state = player_states.dead;
	obj_Camera.follow = self; obj_Camera.shake = 10;
}