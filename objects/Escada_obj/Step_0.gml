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

// Variando sprite
if (room == Energy_05 && sprite_index != Floor3_spr) sprite_index = Floor3_spr;
// Destaque

Alphapower_scr();