/// @description transition(sprite);
/// @param sprite
if (instance_exists(obj_transition_manager))
{
    if (!obj_transition_manager.fade) 
    {
        obj_transition_manager.fade = true;
        obj_transition_manager.sprite = argument0;
    }
}
else
{
    instance_create(0, 0, obj_transition_manager);
    obj_transition_manager.fade = true;
    obj_transition_manager.sprite = argument0;
}
