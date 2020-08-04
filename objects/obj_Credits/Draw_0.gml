for(var i = 0; i < ds_list_size(credits); i++)
{
	var yy = room_height + 48 - credits_y;
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_Main);
	
	var c = $141414;
	
	draw_text_color(room_width/2, yy + 32*i, credits[| i], c, c, c, c, 1);
}