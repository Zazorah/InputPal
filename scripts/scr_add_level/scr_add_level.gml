/// @description Makes level list assembly a little more organized
/// @param rm
/// @param name
/// @param ?unlocked = undefined
function scr_add_level() {
	var rm = argument[0], name = argument[1];
	var unlocked = argument_count > 2 ? argument[2] : undefined;

	return [  rm, //Room Index
	          name, //Level Name
	          MAX_TIMER, //Best Time
	          is_undefined(unlocked) ? false : true, //Room Unlocked
	          ds_list_create() //Indexes of Stages Beating it Unlocks
	        ]


}
