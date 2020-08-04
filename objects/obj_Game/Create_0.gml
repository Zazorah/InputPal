//Initial Setup
macros();

//Camera Setup
instance_create_depth(0, 0, depth, obj_Camera);

//First Room
var first_room = rm_Menu;
room_goto(first_room);

depth = -10;
level_name = "Name Not Set";

//Music
current_song = noone;

//Transition
box_left = 0; box_right = window_get_width()*2;
next_room = noone; transition_timer = 30;

//Room Management
is_menu = false; //If Room is Menu or Not
	
//Timer
stage_completed = false;
timer_active = true;
timer_visible = true;
timer = 0;