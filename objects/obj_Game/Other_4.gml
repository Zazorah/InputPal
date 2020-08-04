//Clear Gate List
ds_list_clear(global.gates);

//Timer
timer_active = true;
timer = 0;

if(room = rm_1_1) { timer_visible = true; current_song = snd_Music }
if(room = rm_End) { timer_visible = false; }