// Dando powerup01

if (instance_exists(Controll_obj))
{
	if (place_meeting(x,y,Player_obj))
	{
		if (keyboard_check_pressed(ord("W")) && !Controll_obj.Inv && image_alpha > 0)
		{
			// Acionando powerUP
			if (Controll_obj.slot03 > 0)
			{
				Controll_obj.window = true;
				Controll_obj.winspr = Quest_spr;
				Controll_obj.PeAchao01 = true;
			}
			else
			{
				audio_play_sound(Vasou,1,false); // Som
				Controll_obj.window = true;
				Controll_obj.winspr = P_spr;
			}
		}
		// Tirando a janela
		if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(ord("A")))
		{
			if (Controll_obj.window) Controll_obj.window = false;
		}
	}
}



