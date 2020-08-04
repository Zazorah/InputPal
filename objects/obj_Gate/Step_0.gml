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

//Set Mask
if(open)
{
	if(image_index < image_number - 1)
	{
		image_speed = 1;
	}
	else
	{
		image_speed = 0;
		image_index = image_number - 1;
	}
	
	mask_index = spr_none;
}
else
{
	if(mask_index == spr_none)
	{
		mask_index = spr_fullTile;
		
		//If Space Free
		if(place_meeting(x, y, obj_Solid) || place_meeting(x, y, obj_Player))
		{
			mask_index = spr_none;
		}
	}
	
	
	
	if(image_index > 0)
	{
		image_speed = -1;
	}
	else
	{
		image_speed = 0;
		image_index = 0;
	}
}