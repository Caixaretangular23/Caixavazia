
// Pause event
if (Controll_obj.Pause) image_speed = 0;
else {image_speed = 1};

if (Controll_obj.Pause == false)
{
	if (!Controll_obj.Eney) Power -= .1; // Degradando a energia
	if  (Controll_obj.Eney) Power -= .05;
}
// Ganhando energia

if (place_meeting(x,y,Player02_obj))
{
	// Mouse OFF
	if (keyboard_check(ord("W")) && !Controll_obj.mouse)
	{
		if (!Controll_obj.Pause)
		{
			// Enchendo a barra no modo normal
			if (Controll_obj.Boss == false) Power += .5 + (Monitor_obj.D * .01);
			// Modo Loop
			if (Controll_obj.Boss) Power += .5 + (Controll_obj.Td * .05);
		}
	}
	// Mouse ON
	if (keyboard_check(vk_rcontrol) && Controll_obj.mouse)
	{
		if (!Controll_obj.Pause)
		{
			// Enchendo a barra no modo normal
			if (Controll_obj.Boss == false) Power += .5 + (Monitor_obj.D * .01);
			// Modo Loop
			if (Controll_obj.Boss) Power += .5 + (Controll_obj.Td * .05);
		}
	}
}

if (Power >= 100) Power = 100;
if (Power <= 10) Power = 10;
