/// @description Jump UP.

if(grounded)
{
    vspd -= jump_height; //Jump Height;
    yscale = 1.5;
    xscale = 0.7;
	grounded = false;
}