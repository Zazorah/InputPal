if(follow != noone)
{
	var xx = follow.x;
	var yy = follow.y - 16;
	
	hspd = lerp(hspd, (xx - x) * 0.7, 0.5);
	vspd = lerp(vspd, (yy - y) * 0.7, 0.5);
	
	x += hspd;
	y += vspd;
	
	var target_angle = 0;
	
	if(follow.facing_set == -1)
	{
		target_angle = 180;
	}
	
	angle_spd = lerp(angle_spd, (target_angle - image_angle) * 0.5, 0.3);
	image_angle += angle_spd;
	
	image_alpha = follow.image_alpha;
}