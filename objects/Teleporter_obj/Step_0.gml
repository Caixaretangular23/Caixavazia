// Mandando o player para outra sala

if (place_meeting(x,y,Player_obj) || place_meeting(x,y, Stelp_obj))
{
	if (keyboard_check_pressed(ord("W")) && instance_exists(Controll_obj) && Controll_obj.BB == false && !Controll_obj.Inv)
	{
		// Player
		Controll_obj.Los = Mpos;
		// Desativando a janela
		if (Controll_obj.window) Controll_obj.window = false;
		// Passagem
		instance_create_layer(0,0,"Instances_UP", T_obj);
		T_obj.De = Desi; // Destino
		
		// Se estiver na escada?
		if (place_meeting(x,y, Up_obj) || room == Stelf_tubo_04) audio_play_sound(Escada_sound, 3, false);
	}
}

// Mensagem Stelf

if (place_meeting(x,y,Stelp_obj) && room == Stelf_tubo_04 && x > room_width/2)
{
	if (!Controll_obj.window && !Controll_obj.Not && !Controll_obj.Inv) Controll_obj.window = true;	
}
