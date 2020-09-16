/// @description Creates and maintains variables for all needed inputs.
/// @function scr_get_input();
function scr_get_input() {

	//Held
	left_held = keyboard_check(vk_left) || gamepad_button_check(0, gp_padl) || gamepad_button_check(4, gp_padl);
	right_held = keyboard_check(vk_right) || gamepad_button_check(0, gp_padr) || gamepad_button_check(4, gp_padr);
	up_held = keyboard_check(vk_up) || gamepad_button_check(0, gp_padu) || gamepad_button_check(4, gp_padu);
	down_held = keyboard_check(vk_down) || gamepad_button_check(0, gp_padd) || gamepad_button_check(4, gp_padd);
	button_held = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1) || gamepad_button_check(4, gp_face1);
	release_held = keyboard_check(ord("X")) || gamepad_button_check(0, gp_shoulderlb) || gamepad_button_check(4, gp_shoulderlb);
	equip_held = keyboard_check(ord("Z")) || gamepad_button_check(0, gp_shoulderrb) || gamepad_button_check(4, gp_shoulderrb);

	//Pressed
	left_pressed = keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl) || gamepad_button_check_pressed(4, gp_padl);
	right_pressed = keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr) || gamepad_button_check_pressed(4, gp_padr);
	up_pressed = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu) || gamepad_button_check_pressed(4, gp_padu);
	down_pressed = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd) || gamepad_button_check_pressed(4, gp_padd);
	button_pressed = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1) || gamepad_button_check_pressed(4, gp_face1);
	restart_pressed = keyboard_check_pressed(ord("R")) || gamepad_button_check_pressed(0, gp_start) || gamepad_button_check_pressed(4, gp_start);


}
