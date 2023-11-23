// Ativando a jenela pelo toque

if (instance_exists(Controll_obj))
{
	if (place_meeting(x,y,Player_obj))
	{
		// Tirando a janela
		if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(ord("A")) && Controll_obj.window) Controll_obj.window = false;
		// Entrando no game01
		if (keyboard_check_pressed(ord("S")) )
		{
			// Se controle não existir
			if (!instance_exists(Controll_obj))
			{
				instance_create_layer(0,0,"Instances_UP", T_obj);
				T_obj.De = Game01;
			}
			// se controle existir
			else
			{
				if (Controll_obj.slot01 >= 1 && Controll_obj.YInd == 384 && !Controll_obj.Hand)
				{
					instance_create_layer(0,0,"Instances_UP", T_obj);
					T_obj.De = Boot3_08;	
					T_obj.co = c_black;
					Controll_obj.Inv = false;
					Controll_obj.Mode = 2; // Modo de jogo
					show_debug_message("fOI?")
				}
			}
		}
	}
}

// Destaque
Alphapower_scr();