/// @description Loads next room in level select.
/// @param ?rm = undefined

var rm = argument_count > 0 ? argument[0] : undefined;

if(rm == undefined)
{
    global.level_index++;
	
    var next_level = global.level_list[| global.level_index];
    global.next_room = next_level[0];
}
else
{
    global.next_room = rm;
}

//Load Next Room in Sequence
transition(spr_transition_circle)