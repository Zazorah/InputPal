//Draw Self
draw_self();

//Draw Menu Options
draw_set_font(fnt_Main);
draw_set_halign(fa_center);

for(var i = 0; i < array_length_1d(menu_options); i++)
{
	var c = $141414;
	
	var str = menu_options[i];
	
	if(i == menu_index) str = "- " + str + " -";
	
	draw_text_color(room_width/2, y + 72 + 32*i, str, c, c, c, c, 1);
}