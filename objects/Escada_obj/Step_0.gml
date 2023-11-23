//Influencia de Player

if (instance_exists(Player_obj))
{
	if (place_meeting(x,y, Player_obj))
	{
		// Influenciador de gravidade
		Player_obj.S = 0;
		Player_obj.y -= 5;
	}
}

// Destaque

Alphapower_scr();