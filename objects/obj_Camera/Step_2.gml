#macro view view_camera[0]

camera_set_view_size(view, view_width, view_height);

if(follow != noone)
{
	var xx = clamp((follow.x - view_width/2) + x_offset, 0, room_width - view_width);
	var yy = clamp((follow.y - view_height/2) + y_offset, 0, room_height - view_height);
	
	var curr_x = camera_get_view_x(view);
	var curr_y = camera_get_view_y(view);
	
	var next_x = lerp(xx, curr_x, 0.2);
	var next_y = lerp(yy, curr_y, 0.2);
	
	camera_set_view_pos(view, next_x, next_y + shake);
}

shake *= -0.7;