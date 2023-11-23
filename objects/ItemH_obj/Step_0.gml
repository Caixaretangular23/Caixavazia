// Dinamico

Alphapower_scr();

// Inv

if (instance_exists(Controll_obj))
{
	if (place_meeting(x,y,Player_obj) && keyboard_check_pressed(ord("W")))
	{
		Controll_obj.slot02 = 1;
		instance_destroy();
	}
}


