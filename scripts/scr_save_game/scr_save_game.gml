///@description Saves game to file.
function scr_save_game() {

	var f = file_text_open_write(global.save_path);

	//Unlocked Stages
	var str = ds_list_write(global.unlocked_levels);
	file_text_write_string(f, str);

	file_text_writeln(f);

	//Best Times
	var lst = ds_list_create();
	for(var i = 0; i < ds_list_size(global.level_list); i++)
	{
	    var level = global.level_list[i];
	    ds_list_add(lst, level[2]);
	}
	str = ds_list_write(lst);
	file_text_write_string(f, str);

	//Close
	file_text_close(f);


}
