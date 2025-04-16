// Alpha em T

if (!instance_exists(T_obj)) image_alpha = 1;
if (instance_exists(T_obj)) image_alpha = (T_obj.Aes * -1) + 1;
// Pause event
if (Controll_obj.Pause) image_speed = 0;
else 
{
	image_speed = 1
	Ae += .2;
}
// Controle de vars numerados

if (U > 9)
{
	U = 0
	D++
	audio_play_sound(Ohye,5,false);
}

if (U < 0)
{
	if (D < 1) U = 0;
	if (D > 0 || Controll_obj.Boss)
	{
		if (DBground_obj.itime < 1)
		{
			U = 0;
			Controll_obj.Beat = true;
			audio_stop_sound(BoxTheme);
			audio_stop_sound(BoxSyheme);
			audio_play_sound(GameO,1,false);
		
			// Arrumando e salvando
			if (instance_exists(Controll_obj))
			{
				// Arrumando
				Controll_obj.Ow = false;
				Controll_obj.Inv = false;
				// Salvando sem boss
				if (D < 10)
				{
					if (Controll_obj.Mode == 0)
					{
						Controll_obj.Mu = U;
						Controll_obj.Md = D;
					}
					// Modo convecional
					if (Controll_obj.Mode == 2)
					{
						Controll_obj.Mu2 = 0;
						Controll_obj.Md2 = D;
					}
				}
				// Salvando com boss
				if (Controll_obj.Boss)
				{
					if (Controll_obj.Tb > Controll_obj.Tf/2) Controll_obj.Tf = Controll_obj.Tb * Controll_obj.Td;	
				}
			}
		}
	}
}

// Estante anim
if (Ae > 2) Ae = 0;

// Sensibilidade a caixa [NÃO FINALIZADO]

if (place_meeting(x ,y,Caixa_obj))
{
	if (Tipo != 0)
	{
		Talpa = 1;
		Tay = y;
	}
}
