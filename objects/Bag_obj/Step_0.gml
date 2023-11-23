// Mostrando messagem
if (instance_exists(Controll_obj) && Controll_obj.BB == false)
{
	if (place_meeting(x,y,Player_obj) && Controll_obj.Inv == false)
	{
		if (keyboard_check_pressed(ord("W")) && !Controll_obj.Inv) Controll_obj.window = true;
		
		// Desativando-se
		if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(ord("A")) && Controll_obj.window) Controll_obj.window = false;
	}
}

// Destaque

Alphapower_scr();