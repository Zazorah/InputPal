global.gates[| gate_index] = state;

//Animation
if(state == true)
{
	image_index = 0;
}
else
{
	image_index = 1;
}

xscalespd = lerp(xscalespd, (1 - xscale) * 0.5, 0.2);
yscalespd = lerp(yscalespd, (1 - yscale) * 0.5, 0.2);

xscale += xscalespd;
yscale += yscalespd;