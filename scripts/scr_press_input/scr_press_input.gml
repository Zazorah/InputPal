/// @description Does logic based on holding the input.
/// @script scr_hold_input(input);
/// @param input

var input = argument0;

switch(input)
{
    case inputs.jump: scr_jump(); break;
	case inputs.move_up: scr_interact(); break;
	case inputs.toggle_gates: scr_toggle_gates(); break;
}