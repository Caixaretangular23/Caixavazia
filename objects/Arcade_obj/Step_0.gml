// Ativando a jenela pelo toque

if (instance_exists(Controll_obj))
{
	if (place_meeting(x,y,Player_obj))
	{
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
				if (Controll_obj.slot01 >= 1 && Controll_obj.YInd == 256 && !Controll_obj.Hand)
				{
					instance_create_layer(0,0,"Instances_UP", T_obj);
					if (!Controll_obj.Event == -1) T_obj.De = Boot3_08;	
					else
					{
						T_obj.De = Game01;	
					}
					Controll_obj.Arcad = true;
					T_obj.co = c_black;
					Controll_obj.Inv = false;
					Controll_obj.Mode = 2; // Modo de jogo
					audio_play_sound(Entrnado,1,false);
				}
			}
		}
			// Avisando a necidade de token ou lanterna
			
			if (keyboard_check_pressed(ord("W")) && !Controll_obj.Inv)
			{
				if (used) audio_play_sound(Arcade, 1, false);
				if (!used) used = true;
				// Eventos
				if (Controll_obj.slot01 < 1)
				{
					Controll_obj.window = true;	
					// Definindo sprite
					if (!Controll_obj.Hand) Controll_obj.winspr = P02_spr
					else
					{
						Controll_obj.winspr = Brook_spr;
					}
				}
				else
				{
					if (!Controll_obj.Hand)
					{
						if (Controll_obj.window == false)
						{
							if (Controll_obj.slotX < 1)
							{
								Controll_obj.winspr = Par_spr;
								Controll_obj.winmage = Attemps;
								Controll_obj.window = true;
								Attemps++;
								show_debug_message("Attemped");
							}
						}
					}
					else
					{
						Controll_obj.window = true;
						Controll_obj.winspr = Brook_spr;
					}
				}
			}
			
			// Regulando as tentativas
			
			if (Attemps >= 5 && Controll_obj.slotX < 1) Controll_obj.slotX++;
	}
	
	// Tirando a janela
	if (Controll_obj.window == true)
	{
		if (keyboard_check(ord("A")) || keyboard_check(ord("D"))) Tj += .01;
		if (Tj > .5)
		{
			Controll_obj.window = false;
			Tj = 0;
		}
	}
}

// Destaque
Alphapower_scr();