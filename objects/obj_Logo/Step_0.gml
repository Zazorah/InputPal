//Input
scr_get_input();

//Change Index
if(up_pressed)
{
	menu_index--;
	if(menu_index < 0) menu_index = array_length_1d(menu_options) - 1;
}
else if(down_pressed)
{
	menu_index++;
	if(menu_index > array_length_1d(menu_options) - 1) menu_index = 0;
}

//Choose Option
if(button_pressed)
{
	switch(menu_index)
	{
		case 0: scr_next_room(rm_1_1); break;
		case 1: scr_next_room(rm_Credits); break;
		case 2: game_end(); break;
	}
}

//Secret Input Shhhh
if(up_held && down_held)
{
	menu_timer++;
	
	if(menu_timer == 240) scr_next_room(rm_ClownEnd);
}
else
{
	menu_timer = 0;
}