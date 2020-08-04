//Input Enum
enum inputs //Ints are equal to image_index of crates
{
    move_left = 0,
    move_right = 1,
    move_up = 2,
    move_down = 3,
    jump = 4,
	toggle_gates = 5,
	toggle_conveyers = 6
}

//Depths
#macro PLYR_DEPTH 2
#macro TEXT_DEPTH 4
#macro EXIT_DEPTH 5
#macro CRATE_DEPTH 0

//Misc
#macro MAX_TIMER 362439

global.debug = false;

//Gates
global.gates = ds_list_create();

//File I/O
global.save_path = "save.dat";
global.clown_path = "data.c";

//Stage Select/Game Progress
global.level_list = scr_create_level_list();
global.unlocked_levels = ds_list_create();
global.next_room = noone;
global.level_index = 0;

//Load Game Data
scr_load_game();