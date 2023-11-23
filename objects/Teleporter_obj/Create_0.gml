Mpos = 0; // O modo de posição que o Player prologue estará imposto
Desi = noone; // Destino


// Posição do player

if (instance_exists(Controll_obj))
{
	if (room == RoomP01_03)
	{
		if (Controll_obj.Los == 2) Player_obj.x = 448;
		if (Controll_obj.Los == 1) Player_obj.x = 780;
		if (Controll_obj.Los == 0) Player_obj.x = 27;
	}
	
	if (room  == Stelf_tubo_04)
	{
		if (Controll_obj.Los == 1) Stelp_obj.x = 700;
		if (Controll_obj.Los == 0) Stelp_obj.x = 224;
	}
	
	if (room == Energy_05)
	{
		if (Controll_obj.Los == 0) Player_obj.x = 608;
		if (Controll_obj.Los == 1)
		{
			Player_obj.x = 96;
			Player_obj.y = 150;
		}
		if (Controll_obj.Los == 3) Player_obj.x = 720;
	}
}