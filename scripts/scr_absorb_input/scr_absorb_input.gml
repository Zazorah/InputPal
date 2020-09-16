/// @script scr_absorb_input(logicCrate instance);
/// @description Absorb and input and set the death flag of the absorbed block.
/// @param block
function scr_absorb_input(argument0) {

	var block = argument0;

	move_state = player_states.normal;
	block.dead = true;

	return block.input;


}
