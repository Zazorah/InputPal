var c = $141414;

//Timer
if(timer_visible)
{
	var seconds = floor(timer/60);
	var minutes = floor(timer/3600);
	
	while(seconds >= 60) seconds -= 60;
	
	var display_string = string_format(minutes,2,0) + ":" + string_replace(string_format(seconds,2,0), " ", "0");
	
	draw_set_font(fnt_UI);
	draw_set_halign(fa_left);
	
	var xx = window_get_width() - 100;
	
	scr_draw_text_outlined(xx, 6, c, c_white, display_string);
	
	draw_sprite_ext(spr_Clock, 0, xx - 36, 4, 1, 1, 0, c_white, 1);
	
	//Inventory UI
	if(instance_exists(obj_Player))
	{
		var p = instance_find(obj_Player, 0);
		
		#macro DRAW_BG else draw_sprite(spr_IconBackground, 0, xx, yy);
		
		//Button Input
		xx = window_get_width() - 28;
		var yy = 100;
		
		if(p.button_input != noone) draw_sprite(spr_HudIcons, p.button_input, xx, yy);
		DRAW_BG
		
		//Right Input
		xx -= 48;

		if(p.right_input != noone) draw_sprite(spr_HudIcons, p.right_input, xx, yy);
		DRAW_BG
		
		//Left Input
		xx -= 64;
		
		if(p.left_input != noone) draw_sprite(spr_HudIcons, p.left_input, xx, yy);
		DRAW_BG
		
		//Up Input
		xx += 32;
		yy -= 32;
		
		if(p.up_input != noone) draw_sprite(spr_HudIcons, p.up_input, xx, yy);
		DRAW_BG
		
		//Down Input
		yy += 64;
		
		if(p.down_input != noone) draw_sprite(spr_HudIcons, p.down_input, xx, yy);
		DRAW_BG
	}
}