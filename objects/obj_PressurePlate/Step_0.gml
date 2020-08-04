if(place_meeting(x, y, obj_Solid) || place_meeting(x, y, obj_Player))
{
	global.gates[| gate_index] = true;
}
else
{
	global.gates[| gate_index] = false;
}