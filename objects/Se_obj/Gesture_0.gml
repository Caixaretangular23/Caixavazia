// Segunda opção

if (Option == 1 && card == 0)
{
	if (transtime >= room_speed*.3 && Arcad)
	{
		card = 1;
		Option = 0;
		Mx0 = 1;
		transtime = 0;
		if (instance_exists(Controll_obj)) Controll_obj.AcTo = false;
	}
}

// Outra segunda

if (card == 1)
{
	if (Option == 0)
	{
		if (transtime >= room_speed*.3 && !instance_exists(T_obj))
		{
			instance_create_layer(0,0,"Instances_UP", T_obj);
			T_obj.De = Game01;
			Controll_obj.Mode = 0;
		}
	}

	// Botão de volta

	if (Option == 2)
	{
		if (transtime >= room_speed*.3 && !instance_exists(T_obj))
		{
			transtime = 0;
			card = 0;
			Option = 0;
			Mx0 = 2;
		}
	}
	
	// Loop
		
	if (Option == 1)
	{
		if (transtime >= room_speed*.3 && !instance_exists(T_obj))
		{
			instance_create_layer(0,0,"Instances_UP", T_obj);
			T_obj.De = Game01;
			Controll_obj.Mode = 1;
		}
	}
}