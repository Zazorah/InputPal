//Get Input
scr_get_input();

if(move_state == overworld_states.normal)
{
    //Movement
    if(left_held)
    {
        facing = -1; vspd = 0;
        if(hspd > 0) hspd = 0;
        hspd = lerp(hspd, -max_spd, 0.1);
    }
    
    else if(right_held)
    {
        facing = 1; vspd = 0;
        if(hspd < 0) hspd = 0;
        hspd = lerp(hspd, max_spd, 0.1);
    }
    
    else if(up_held)
    {
        facing = 0; hspd = 0;
        if(vspd > 0) vspd = 0;
        vspd = lerp(vspd, -max_spd, 0.1);
    }
    
    else if(down_held)
    {
        facing = 0; hspd = 0;
        if(vspd < 0) vspd = 0;
        vspd = lerp(vspd, max_spd, 0.1);
    }
    
    else
    {
        hspd = lerp(hspd, 0, 0.1);
        vspd = lerp(vspd, 0, 0.1);
    }
    
    //Collision/Apply Movement
    repeat(abs(vspd))
    {
        if(!place_meeting(x, y + sign(vspd), obj_Solid))
        {
            y += sign(vspd);
        }
        else
        {
            vspd = 0;
            break;
        }
    }
    
    repeat(abs(hspd))
    {
        if(!place_meeting(x + sign(hspd), y, obj_Solid))
        {
            x += sign(hspd);
        }
        else
        {
            hspd = 0;
            break;
        }
    }
    
    //Enter Level
    if(place_meeting(x, y, obj_stage_entrance) && button_pressed)
    {
        move_state = overworld_states.entering;
    }
}


