//Timer
if(timer_active)
{
	timer++;
}

//Music
if(current_song != noone)
{
	if(!audio_is_playing(current_song))
	{
		audio_play_sound(current_song, 1, true);
	}
}