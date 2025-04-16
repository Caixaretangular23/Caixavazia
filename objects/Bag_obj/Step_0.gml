// Mostrando messagem
if (instance_exists(Controll_obj) && Controll_obj.BB == false)
{
	if (place_meeting(x,y,Player_obj) && Controll_obj.Inv == false)
	{
		if (keyboard_check_pressed(ord("W")) && !Controll_obj.Inv && Controll_obj.slot03 == 0)
		{
			Controll_obj.winspr = pBAG_spr;
			Controll_obj.window = true;
			audio_play_sound(Bolsa, 1, false);
		}
		// Spawnando o inventário
		if (Controll_obj.slot03 > 0 && Goi == false && !instance_exists(Inimie_obj))
		{
			Controll_obj.Inv = true;
			audio_play_sound(InvP, 1, false);
			Goi = true;
		}
		// Desativando-se
		if ((keyboard_check_pressed(ord("D")) || keyboard_check_pressed(ord("A"))) && Controll_obj.window && !Controll_obj.Inv) Controll_obj.window = false;
	}
	// Dando permisão
	if ((Player_obj.x > x + 80 && Player_obj.x < x + 128) || (Player_obj.x < x - 80 && Player_obj.x > x - 128)) Goi = false; 
}

// Destaque

Alphapower_scr();