// Destaque

if (image_alpha > 0) Alphapower_scr();

// Tirando o player de sua colição

if (place_meeting(x,y + 10,Player_obj))
{
	if (instance_exists(Player_obj))
	{
		if (Player_obj.x < x) Player_obj.x -= 5;
		if (Player_obj.x > x) Player_obj.x += 5;
	}
}