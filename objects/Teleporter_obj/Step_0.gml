// Mandando o player para outra sala

if (place_meeting(x,y,Player_obj) || place_meeting(x,y, Stelp_obj))
{
	if (keyboard_check_pressed(ord("W")) && instance_exists(Controll_obj) && Controll_obj.BB == false && !Controll_obj.Inv && !lock)
	{
		// Player
		Controll_obj.Los = Mpos;
		// Desativando a janela
		if (Controll_obj.window) Controll_obj.window = false;
		// Passagem
		instance_create_layer(0,0,"Instances_UP", T_obj);
		T_obj.De = Desi; // Destino
		
		// Se estiver na escada?
		if (place_meeting(x,y, Up_obj) || room == Stelf_tubo_04) audio_play_sound(Escada_sound, 1, false);
		if (place_meeting(x,y,Door_obj)) audio_play_sound(Porta01, 1, false);
	}
}
// Vista grossa

if (place_meeting(x,y,Pb_obj)) lock = true;

/* Mensagem Stelf

if (place_meeting(x,y,Stelp_obj) && room == Stelf_tubo_04 && x > room_width/2)
{
	if (!Controll_obj.window && !Controll_obj.Not && !Controll_obj.Inv) Controll_obj.window = true;	
}*/

// Auto desbloqueio

if (!place_meeting(x,y,Player_obj) && lock) lock = false;

if (!(place_meeting(x,y, Pq_obj) && place_meeting(x,y, Pb_obj)) && lock)
{
	Tlock++;
	if (Tlock > room_speed*.5)
	{
		lock = false;
		Tlock = 0;
	}
}

