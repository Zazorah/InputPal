
if(!dead)
{
	//Conveyor Belt
	if(place_meeting(x, y + 1, obj_Conveyor) && grounded)
	{
		var conveyor = instance_nearest(x, y + 1, obj_Conveyor);
	
		hspd = conveyor.spd * conveyor.dir;
	}
	
    //Horizontal Collision
    if(place_meeting(x + hspd, y, obj_Solid) || place_meeting(x + hspd, y , obj_Player))
    {
        while(!place_meeting(x + sign(hspd), y, obj_Solid) && !place_meeting(x + sign(hspd), y, obj_Player))
        {
            x += sign(hspd);
        }
        hspd = 0;
    }
	
	if(!place_meeting(x, y + 1, obj_Solid) && !place_meeting(x, y + 1, obj_FallThrough) && !place_meeting(x, y + 1, obj_Player)) grounded = false;
	
	if(grounded) x += hspd; 
    
    //Apply Gravity
    if(!grounded)
    {
        push_speed = 0;
        vspd += weight;
    }
    
    //Vertical Collision
    repeat(abs(vspd))
	{
		if(!place_meeting(x, y + sign(vspd), obj_Solid) && !place_meeting(x, y + sign(vspd), obj_Player))
		{
			y += sign(vspd);
		}
		else
		{
			if(vspd > 0) grounded = true;
			vspd = 0;
			push_speed = 2;
			obj_Camera.shake = 10;
			break;
		}
	
		var bottom = self.bbox_bottom;
		var nearest_platform = instance_nearest(x, bottom, obj_FallThrough);
	
		if(vspd > 0)
		{
			if(place_meeting(x, y + 1, obj_FallThrough) && (bottom == nearest_platform.bbox_top))
			{
				vspd = 0;
				push_speed = 2;
				grounded = true;
				obj_Camera.shake = 10;
				y = nearest_platform.bbox_top - 1;
				break;
			}
		}
	}
    
    //Lerp Scales
    xscale = lerp(xscale, 1, 0.1);
    yscale = lerp(yscale, 1, 0.1);
    
    //Reset HSPD
    hspd = 0;
}

//Die
else
{
    mask_index = spr_none;
    
    x = lerp(x, obj_Player.x, 0.1);
    y = lerp(y, obj_Player.y - 16, 0.1);
    
    image_alpha = lerp(image_alpha, 0, 0.1);
	
	xscale = lerp(xscale, 0, 0.1);
	yscale = lerp(yscale, 0, 0.1);
    
    image_angle += sign(x - obj_Player.x) * 5;
    
    if(image_alpha < 0.01) instance_destroy();
}