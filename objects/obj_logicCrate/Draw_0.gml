//Stick to One Frame
image_speed = 0;

depth = CRATE_DEPTH;

//Draw Self
draw_sprite_ext(sprite_index, input, x, y, image_xscale * xscale, image_yscale * yscale, image_angle, c_white, image_alpha);

depth = -1;

//Draw Bubble
draw_sprite_ext(spr_Bubble, 0, x, y - bubble_offset, xscale, yscale, image_angle, c_white, bubble_alpha);
draw_set_font(fnt_Bubble);
draw_set_halign(fa_center);

var yy = y - bubble_offset - 22;
var c = $141414;

draw_text_ext_color(x + 2, yy, scr_input_get_name(input), 16, 72, c, c, c, c, bubble_alpha);