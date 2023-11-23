/* Dinamico

Alphapower_scr();

*/ // Coletando

if (instance_exists(Controll_obj))
{
	if (place_meeting(x,y,Player_obj) && keyboard_check_pressed(ord("W")))
	{
		Controll_obj.slot01 = true;
		instance_destroy();
	}
}

// Sendo empurrado
if (Controll_obj.Not && Controll_obj.Sm == 0 && room == Stelf_tubo_04) x -= .4;

// Cair...

if (!place_meeting(x,y,Chao_obj))
{
	Gravity_scr();
	Controll_obj.Ton = true;	
}