/// @description Does logic based on holding the input.
/// @script scr_hold_input(input);
/// @param input

var input = argument0;

switch(input)
{
    case inputs.move_left: scr_move_left(); break;
	case inputs.move_down: scr_drop_through(); break;
    case inputs.move_right: scr_move_right(); break;
}