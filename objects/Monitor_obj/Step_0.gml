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
			audio_stop_all();
		
			// Arrumando e salvando
			if (instance_exists(Controll_obj))
			{
				// Arrumando
				Controll_obj.Ow = false;
				Controll_obj.Inv = false;
				// Salvando sem boss
				if (D < 10)
				{
					Controll_obj.Mu = U;
					Controll_obj.Md = D;
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