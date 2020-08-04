/// @script scr_release_input(input);
/// @description Releases an input and turns it into a block.
/// @param input

var input = argument0;

//Check if There's Room For Box
if(!place_meeting(x, y - 36, obj_Solid))
{
    var b = instance_create_depth(x, y - 16, depth + 1, obj_logicCrate);
    b.input = input;
    
    b.xscale = 0.5; b.yscale = 1.5;
    
    b.vspd = -6;
    
    mask_index = spr_qrtrTile; alarm[0] = 6;
    
    xscale = 1.5; yscale = 0.5;
    
    return true;
}

return false;