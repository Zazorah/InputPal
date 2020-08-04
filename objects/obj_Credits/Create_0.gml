credits = ds_list_create();
credits_y = 0;

#macro LINES "-------------";

credits[| 0] = "Dev Team"
credits[| 1] = LINES
credits[| 2] = "Izzy - @ZazSaysStuff - Programmer/Designer";
credits[| 3] = "Wendy - @wendyisurfrendy - Artist/Designer";
credits[| 4] = "Jack - @Drooling_Demon - Designer";
credits[| 5] = " ";
credits[| 6] = "Music";
credits[| 7] = LINES
credits[| 8] = "Abstraction - http://abstractionmusic.bandcamp.com/";
credits[| 9] = " ";
credits[| 10] = "Special Thanks";
credits[| 11] = LINES
credits[| 12] = "Vivian, Mc, Rob";

if(file_exists(global.clown_path))
{
	ds_list_add(credits, " ");
	ds_list_add(credits, "Clown Credits");
	ds_list_add(credits, "-------------");
	ds_list_add(credits, "Mc - Clown Birther");
}