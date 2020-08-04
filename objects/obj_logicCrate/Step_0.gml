
//Near Player
if(distance_to_object(obj_Player) < 32 && !dead)
{
    bubble_alpha = lerp(bubble_alpha, 1, 0.1);
    bubble_offset = lerp(bubble_offset, 48, 0.1);
}
else
{
	bubble_alpha = lerp(bubble_alpha, 0, 0.1);
	bubble_offset = lerp(bubble_offset, 0, 0.1);
}