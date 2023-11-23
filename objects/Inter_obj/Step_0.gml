// Desativando o BB evento [Branco]

if (instance_exists(Controll_obj) && Controll_obj.BB)
{
	// Alpha
	if (!instance_exists(T_obj)) image_alpha = 1;
	else
	{
		image_alpha = (T_obj.Aes * -1) + 1;	
	}
	// Interação
	if (place_meeting(x,y,Player_obj) && keyboard_check_pressed(ord("W")))
	{
		Controll_obj.BB = false;
		audio_play_sound(Inter_sound, 3,false);
		instance_destroy();
	}
		
}

// Player

if (instance_exists(Controll_obj) && sprite_index == Button_spr)
{
	if (Controll_obj.Li == false)
	{
		// Colocando a janela
		if (place_meeting(x,y,Stelp_obj) && keyboard_check_pressed(ord("W")) && !Controll_obj.Inv)
		{
			audio_play_sound(Click_sound, 3, false);
			Controll_obj.window = true;
		}
		// Tirando a janela
		if (keyboard_check(ord("D")) || keyboard_check(ord("A"))) 
		{
			if (Controll_obj.window && place_meeting(x,y,Stelp_obj)) Controll_obj.window = false;
		}
	}
	// Luz ligada
	if (Controll_obj.Li)
	{
		// Tempo
		if (mtime <= room_speed*.7) mtime++;
		
		// Trocando lado
		if (place_meeting(x,y,Stelp_obj) && keyboard_check_pressed(ord("W")) && !Controll_obj.Inv)
		{
			// Som
			audio_play_sound(Click_sound, 3, false);
			// Troca
			if (mtime >= room_speed*.5 && Controll_obj.Sm == 0)
			{
				Controll_obj.Sm = 1;
				mtime = 0;
			}
			if (mtime >= room_speed*.5 && Controll_obj.Sm == 1)
			{
				Controll_obj.Sm = 0;
				mtime = 0;
			}
		}
	}
}