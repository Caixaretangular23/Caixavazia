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
					if (!Controll_obj.Event == -1) T_obj.De = Boot3_08;	
					else
					{
						T_obj.De = Game01;	
					}
					T_obj.co = c_black;
					Controll_obj.Inv = false;
					Controll_obj.Mode = 2; // Modo de jogo
				}
			}
		}
			// Avisando a necidade de token ou lanterna
			
			if (keyboard_check_pressed(ord("W")))
			{
				if (Controll_obj.slot01 < 1)
				{
					Controll_obj.winspr = P02_spr;
					Controll_obj.window = true;	
				}
				else
				{
					if (Controll_obj.window == false)
					{
						if (Controll_obj.slotX < 1)
						{
							Controll_obj.window = true;
							Attemps++;
							show_debug_message("Attemped");
						}
					}
				}
			}
			
			// Regulando as tentativas
			
			if (Attemps >= 5 && Controll_obj.slotX < 1) Controll_obj.slotX++;
	}
}

// Destaque
Alphapower_scr();