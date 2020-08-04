//Scales
xscalespd = lerp(xscalespd, (1 - xscale) * 0.5, 0.2);
yscalespd = lerp(yscalespd, (1 - yscale) * 0.5, 0.2);

xscale += xscalespd;
yscale += yscalespd;

//Act as Exit
if(place_meeting(x, y, obj_Player) && obj_Player.move_state != player_states.win)
{
	obj_Player.move_state = player_states.win;
	
	obj_Game.timer_active = false;
	
	instance_create_depth(x, obj_Player.y, depth, obj_ExitTube);
	
	xscale = 1.5; yscale = 0.5;
}