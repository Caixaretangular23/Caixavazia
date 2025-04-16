// Dinamico

//Alphapower_scr();
Vei_scr();
// Inv

if (instance_exists(Controll_obj))
{
	if (place_meeting(x,y,Player_obj) && keyboard_check_pressed(ord("W")))
	{
		Controll_obj.slot02 = 1;
		audio_play_sound(Getitem,1,false);
		instance_destroy();
	}
}

// Tremendo

time++;
if (time > room_speed)
{
	Ro = 1;
	time = 0;
}


