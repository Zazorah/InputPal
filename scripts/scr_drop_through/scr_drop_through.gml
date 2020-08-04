/// @description Drop through platforms.

var plat = instance_nearest(x, bbox_bottom, obj_FallThrough);

if (place_meeting(x,y + 1,obj_FallThrough)) && !place_meeting(x, y + 32, obj_Solid)
{
	//show_message("Player Bottom: " + string(bbox_bottom) + " Platform Top: " + string(plat.bbox_top));
	
	y++;
	grounded = false;
	
}
//if(bbox_bottom > plat.bbox_top) show_message("Fallen Through");