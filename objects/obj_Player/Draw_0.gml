//Draw Mask
if(global.debug)
{
    draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 0.5);
}

//Depth
depth = PLYR_DEPTH;

//Hide on Win or Loss
if(move_state == player_states.win || move_state == player_states.dead)
{
	image_alpha = 0;
}

//Draw Self
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * xscale * facing, image_yscale * yscale, 0, c_white, image_alpha);