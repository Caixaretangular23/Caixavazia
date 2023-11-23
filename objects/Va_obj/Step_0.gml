// Dando powerup01

if (instance_exists(Controll_obj))
{
	if (place_meeting(x,y,Player_obj))
	{
		if (keyboard_check_pressed(ord("W")) && !Controll_obj.Inv)
		{
			Controll_obj.window = true;
			if (Controll_obj.Event > 0) Controll_obj.PeAchao01 = true;
		}
		// Tirando a janela
		if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(ord("A")))
		{
			if (Controll_obj.window) Controll_obj.window = false;
		}
	}
}



