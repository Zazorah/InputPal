
scr_get_input();

moving = false;

if(move_state != player_states.win && move_state != player_states.dead)
{
	//Conveyor Belt
	if(place_meeting(x, y + 1, obj_Conveyor) && grounded)
	{
		var conveyor = instance_nearest(x, y + 1, obj_Conveyor);
	
		hspd = conveyor.spd * conveyor.dir;
	}
	
	//Release Input
	if(release_held)
	{
	    if(left_pressed && left_input != noone)
	    {
	        if(scr_box_input(left_input)) left_input = noone;
	    }
	    else if(right_pressed && right_input != noone)
	    {
	        if(scr_box_input(right_input)) right_input = noone;
	    }
	    else if(up_pressed && up_input != noone)
	    {
	        if(scr_box_input(up_input)) up_input = noone;
	    }
	    else if(down_pressed && down_input != noone)
	    {
	        if(scr_box_input(down_input)) down_input = noone;
	    }
	    else if(button_pressed && button_input != noone)
	    {
	        if(scr_box_input(button_input)) button_input = noone;
	    }
	}

	//Equip Input
	else if(equip_held)
	{
	    var block = noone;
    
	    if(position_meeting(x + (facing_set * 24), y, obj_logicCrate))
	    {
	        block = instance_nearest(x + (facing_set * 24), y, obj_logicCrate);
	    }
    
	    if(block != noone)
	    {	
	        if(left_pressed && left_input == noone)
	        {
	            left_input = scr_absorb_input(block);
	        }
	        else if(right_pressed && right_input == noone)
	        {
	            right_input = scr_absorb_input(block);
	        }
	        else if(down_pressed && down_input == noone)
	        {
	            down_input = scr_absorb_input(block);
	        }
	        else if(up_pressed && up_input == noone)
	        {
	            up_input = scr_absorb_input(block);
	        }
	        else if(button_pressed && button_input == noone)
	        {
	        	button_input = scr_absorb_input(block);
	        }
	    }
	}

	//Do Inputs
	else
	{
	    //Held Inputs
	    if(left_held) 
		{
			scr_hold_input(left_input);
		}
	    else if(right_held) 
		{
			scr_hold_input(right_input);
		}
		else if(up_held)
		{
			scr_hold_input(up_input);
		}
		else if(down_held)
		{
			scr_hold_input(down_input);
		}
		else if(button_held) 
		{
			scr_hold_input(button_input);
		}
    
	    //Pressed Inputs
		if(left_pressed) 
		{
			scr_press_input(left_input);
		}
		else if(right_pressed) 
		{
			scr_press_input(right_input);
		}
		else if(down_pressed) 
		{
			scr_press_input(down_input);
		}
		else if(up_pressed) 
		{
			scr_press_input(up_input);
		}
	    else if(button_pressed) 
		{
			scr_press_input(button_input);
		}
	}
	
	//Restart
	if(restart_pressed)
	{
		move_state = player_states.dead;
		obj_Camera.shake = 10;
		
		scr_create_explosion(x, y);
	}
}

//Horizontal Collision
if(place_meeting(x + hspd, y, obj_Solid))
{
    while(!place_meeting(x + sign(hspd), y, obj_Solid))
    {
        x += sign(hspd);
    }
    hspd = 0;
}

if(move_state == player_states.dead) hspd = 0;

x += hspd;

//Release Pushed Block 
if(move_state == player_states.pushing)
{
	if(pushed_block != noone)
	{
		if(abs(pushed_block.vspd) > 2)
		{
			move_state = player_states.normal;
			pushed_block = noone;
		}
	}
}

//Slow Down if Not Moving
if(!moving)
{
    if(move_state == player_states.pushing) move_state = player_states.normal;
    
    if(hspd > 0)
    {
        hspd -= 2; if(hspd < 0) hspd = 0;
    }
    
    else if(hspd < 0)
    {
        hspd += 2; if(hspd > 0) hspd = 0;
    }
}

//Walk Animation
if(sprite_index == spr_plyer_walk)
{
	image_speed = abs(hspd);
}

//Gravity
var grav = 0.2;

if(!place_meeting(x, y + 1, obj_Solid) && !place_meeting(x, y + 1, obj_FallThrough))
{
	grounded = false;
}

if(grounded = false)
{
    vspd += grav;
}

//Lerp Scales
xscale = lerp(xscale, 1, 0.1);
yscale = lerp(yscale, 1, 0.1);
facing = lerp(facing, facing_set, 0.2);

//Vertical Collision
repeat(abs(vspd))
{
	if(!place_meeting(x, y + sign(vspd), obj_Solid))
	{
		y += sign(vspd);
	}
	else
	{
		if(vspd > 0) grounded = true;
		vspd = 0;
		break;
	}
	
	var bottom = self.bbox_bottom;
	var nearest_platform = instance_nearest(x, bottom, obj_FallThrough);
	
	if(vspd > 0)
	{
		if(place_meeting(x, y + 1, obj_FallThrough) && (bottom == nearest_platform.bbox_top))
		{
			vspd = 0;
			grounded = true;
			y = nearest_platform.bbox_top - 1;
			break;
		}
	}
}

if(move_state == player_states.dead) vspd = 0;

//Restart After Death
if(move_state == player_states.dead)
{
	obj_Game.timer_active = false;
	
	death_timer--;
	if(death_timer == 0)
	{
		scr_next_room(room);
	}
}