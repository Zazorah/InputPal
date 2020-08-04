//Focus Camera
if(place_meeting(x, y, obj_Overworld_Player))
{
    obj_Camera.follow = self;
    active = true;
    alarm[1] = 10;
}