/// @description Set the best time for a stage
/// @param stage_index
/// @param time
function scr_set_best_time(argument0, argument1) {

	var stage_index = argument0, time = argument1;

	var level = global.level_list[| level_index];

	global.level_list[| level_index] = [level[0], level[1], time, level[3], level[3]];


}
