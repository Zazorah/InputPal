///@description Loads save file.

var f = file_text_open_read(global.save_path);

if(f != noone)
{
    //Unlocked Stages
    var str = file_text_read_string(f);
    ds_list_read(global.unlocked_levels, str);
    
    file_text_readln(f);
    
    //Best Time
    str = file_text_read_string(f);
    var timesList = ds_list_create();
    ds_list_read(timesList, str);
    
    for(var i = 0; i < ds_list_size(global.level_list); i++)
    {
        //Set Unlocked Stages
        if(ds_list_find_index(global.unlocked_levels, i) != -1)
        {
            scr_unlock_level(i);
        }
        
        //Set Best Times
        scr_set_best_time(i, timesList[| i]);
    }
}

else
{
    show_debug_message("No save found.")
}