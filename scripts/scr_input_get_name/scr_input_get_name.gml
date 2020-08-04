/// @description Returns name of Logic Block as string.
/// @param input

var input = argument0;

switch(input)
{
    case inputs.jump: return "Jump"; break;
    case inputs.move_left: return "Move Left"; break;
    case inputs.move_right: return "Move Right"; break;
    case inputs.move_down: return "Move Down"; break;
    case inputs.move_up: return "Move Up"; break;
    case inputs.toggle_gates: return "Gate Toggle"; break;
    case inputs.toggle_conveyers: return "Belt Toggle"; break
	case noone: return "Nothing"; break;
    
    default: return ""; break;
}