/// @description Move left.

moving = true;
facing_set = -1;

if(move_state == player_states.normal)
{
    facing = -1;
    if(hspd > 0) hspd = 0;
    hspd = lerp(hspd, -max_spd, 0.1);
    
    //Check for Pushable to the Left
    if(place_meeting(x + hspd, y, par_Pushable))
    {
        push_timer++;
        if(push_timer > 16)
        {
            pushed_block = instance_nearest(x + hspd, y, par_Pushable);
            move_state = player_states.pushing;
        }
    }
}
else if(move_state == player_states.pushing)
{
	if(pushed_block != noone)
	{
	    pushed_block.hspd = -pushed_block.push_speed;
	    hspd = -pushed_block.push_speed;
	}
}