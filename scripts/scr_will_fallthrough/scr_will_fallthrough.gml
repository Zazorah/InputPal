/// @description Returns true if object will fall through platform, false if it will be stopped.
/// @param obj
/// @param plat

var player = argument0;
var plat = argument1;

if (((round(player.y) > plat.y + 1) || (player.fallthrough_flag)))
{
    return true;
}
else return false;