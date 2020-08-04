//States
enum player_states
{
    normal,
    ladder,
    pushing,
	win,
	dead
}
move_state = player_states.normal;

//Mask
mask_index = spr_fullTile;

//Pushing
push_timer = 0;
pushed_block = noone;

//Animations
idle_anim = spr_plyer_idle;
walk_anim = spr_plyer_walk;

//Starting Inputs
up_input = inputs.move_up;
down_input = inputs.move_down;
left_input = inputs.move_left;
right_input = inputs.move_right;
button_input = inputs.jump;

//Movement
hspd = 0; vspd = 0;
grounded = true; 
facing = 1; facing_set = 1;
coyote_timer = 0;
moving = false; //TRUE if moving left or right on this frame.

max_spd = 2.5;
jump_height = 6;

fallthrough_flag = false;

//Death
death_timer = 60;

//Drawing
xscale = 1; yscale = 1;
claw = instance_create_depth(x, y, depth + 1, obj_Claw);
claw.follow = self;

//Set as Camera Follow
if(instance_exists(obj_Camera)) obj_Camera.follow = self;