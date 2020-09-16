/// @param level_index
///@description Unlocks a level in the level list.
function scr_unlock_level(argument0) {

	var level_index = argument0;

	var level = global.level_list[| level_index];

	global.level_list[| level_index] = [level[0], level[1], level[2], true, level[3]];


}
