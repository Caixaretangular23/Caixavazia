
// Pause event
if (Controll_obj.Pause) image_speed = 0;
else {image_speed = 1};
// travas
if (Controll_obj.Pause)
{
	hspeed = 0;
}
else
{
	if (hspeed == 0)
	{
		// Velocidade sem chefe
		if (Controll_obj.Boss == false)
		{
			if (x < room_width/2)
			{
				hspeed = 1 + (Monitor_obj.D/7);
				// Aditivo 01
				if (Controll_obj.mouse) hspeed += .2;
			}
			if (x > room_width/2)
			{
				hspeed = -1 - (Monitor_obj.D/7);
				// Aditivo 02
				if (Controll_obj.mouse) hspeed -= .2;
			}
		}
		// Velocidade como chefe
		if (Controll_obj.Boss)
		{
			if (x < room_width/2) hspeed = 1.5 + (Controll_obj.Td/3);
			if (x > room_width/2) hspeed = -1.5 - (Controll_obj.Td/3);
		}
	}
}
// Moni
if (place_meeting(x,y, Monitor_obj) && Grv == false)
{
	instance_destroy(); // Se destruindo
	if (Bro == false)
	{
		if (Controll_obj.Bobox) Monitor_obj.U += 2;	
		else
		{
			Monitor_obj.U += 1;	
		}
	}
	if (Bro == true && DBground_obj.itime < 1)
	{
		Monitor_obj.U -= Monitor_obj.D + 1;
		audio_play_sound(Wong_sound, 1, false);
	}
}
if (y > room_height + 20) instance_destroy();

if (Bro)
{
	sprite_index = CaixaB_spr;
}
// Eventos de inativação

if (Grv)
{
	Gravity_scr();
	image_angle++;
	if (instance_exists(DBground_obj)) DBground_obj.Bg = true;
	
	// Escolhendo a dificuldade
	
	if (instance_exists(Controll_obj) && instance_exists(DBground_obj))
	{
		if (DBground_obj.itime == 1)
		{
			if (instance_exists(Controll_obj) && Controll_obj.Boss == false)
			{
				// Ativando o chefe se estiver no modo "ARCADE"
				 if (Controll_obj.Mode == 1) Controll_obj.Boss = true;
				 else
				 {
					Controll_obj.Boss = false;	 
				 }
			}
		}
			// Definindo a "dificuldade"
			if (x < room_width/2) Controll_obj.di = 1;	
			if (x > room_width/2) Controll_obj.di = 2;	
	}
}

//Anulando colisão ou iniciando o jogo
if (place_meeting(x,y, Chao_obj)) y += 5;