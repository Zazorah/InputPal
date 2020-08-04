//Draw Mask
if(global.debug)
{
    draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 0.5);
}

//Depth
depth = CRATE_DEPTH;

//Draw Self
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * xscale, image_yscale * yscale, 0, c_white, 1);