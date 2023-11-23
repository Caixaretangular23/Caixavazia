// Abrindo e fechando o Papel

if (instance_exists(Controll_obj) && instance_exists(Player_obj) && Controll_obj.BB == false)
{
	if (keyboard_check_pressed(ord("W")) && !Controll_obj.Inv && place_meeting(x,y,Player_obj))
	{
		showup = true;
		Player_obj.image_alpha = 0;
		audio_play_sound(Papel01, 3, false);
	}
	if (keyboard_check_pressed(vk_backspace) && showup == true)
	{
		showup = false;
		Player_obj.image_alpha = 1;
		audio_play_sound(Paper02, 3, false);
	}
	// Predendo o player
	if (showup) Player_obj.x = x;
}

// Destaque...
Alphapower_scr();