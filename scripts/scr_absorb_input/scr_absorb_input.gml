/// @script scr_absorb_input(logicCrate instance);
/// @description Absorb and input and set the death flag of the absorbed block.
/// @param block

var block = argument0;

move_state = player_states.normal;
block.dead = true;

return block.input;