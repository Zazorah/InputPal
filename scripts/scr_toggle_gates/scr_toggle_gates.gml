/// @description Toggle all gates.
function scr_toggle_gates() {

	for(var i = 0; i < instance_number(obj_Gate); i++)
	{
		var g = instance_find(obj_Gate, i);
	
		switch(g.reverse)
		{
			case true:
				g.reverse = false;
				break;
		
			case false:
				g.reverse = true;
				break;
		}
	}


}
