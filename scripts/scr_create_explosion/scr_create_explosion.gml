/// @description Creates tiny lil explosion at location.
/// @param x
/// @param y

var xx = argument0; var yy = argument1;

for(var i = 0; i < 36; i++)
{
	var p = instance_create_depth(xx, yy, depth - 1, obj_Poof);
	p.direction = 10*i;
	p.image_alpha += irandom(5) / 10;
}