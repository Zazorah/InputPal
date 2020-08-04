/// @description Interact with objects in environment.

//Lever
if(place_meeting(x, y, obj_Lever))
{
	var l = instance_nearest(x, y, obj_Lever);
	
	switch(l.state)
	{
		case true:
			l.state = false;
			break;
			
		case false:
			l.state = true;
			break;
	}
	
	l.xscale = 1.5; l.yscale = 0.5;
}