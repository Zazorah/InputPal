//Depth
depth = TEXT_DEPTH;

if(activated)
{
	draw_set_halign(fa_center);
	draw_set_font(fnt_Main);
	draw_text_ext_color(x, y, msg, 16, width, c_gray, c_gray, c_gray, c_gray, 1);
}