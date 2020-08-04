/// @description Transition
fade = false;
spawn = false;
counter = -1;
timer = 1;
done = false;
sprite = spr_transition_square;

//Size of your transition sprite. Must be power of 2.
spritesize = 32;

//Width & Height of your screen
screenWidth = 1280;
screenHeight = 720;

width = screenWidth / spritesize;
height = screenHeight / spritesize;