/* Dinamico

Alphapower_scr();

*/ // Coletando

if (instance_exists(Controll_obj))
{
	if (place_meeting(x,y,Player_obj) && keyboard_check_pressed(ord("W")))
	{
		Controll_obj.slot01 = true;
		Controll_obj.window = true;
		Controll_obj.winspr = Presenti_spr;
		audio_play_sound(Foi, 1, false);
		instance_destroy();
	}
}

// Sendo empurrado
if (Controll_obj.Not && Controll_obj.Sm == 0 && room == Stelf_tubo_04) x -= .4;

// Cair...
if (x != xstart) Controll_obj.Ton = 1;

if (!place_meeting(x,y,Chao_obj) && x <= 900)
{
	Gravity_scr();
	if (room == Stelf_tubo_04) Controll_obj.Ton = 2;	
}

// Movendo-se

if (room == Energy_05)
{
	if (image_angle > -90)
	{
		x += 1.5;
		image_angle -= 2;
	}
	
	if (image_angle <= -90) image_angle = -90;
}