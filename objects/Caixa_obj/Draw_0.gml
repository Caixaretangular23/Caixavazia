// Aura
if (Bro)
{
	if (DBground_obj.itime > 0) draw_sprite_ext(Pomts_spr, 0, x, y - 40, 1, 1, 0, c_white, 1);	
	if (DBground_obj.itime <= 0) draw_sprite_ext(Pomts_spr, Monitor_obj.D + 1, x, y - 40, 1, 1, 0, c_white, 1);	
}
else
{
	if (!Controll_obj.Bobox) draw_sprite_ext(Ponts_spr, 0, x, y - 40, 1, 1, image_angle, c_white, 1);
	else
	{
		draw_sprite_ext(Ponts_spr, 1, x, y - 40, 1, 1, image_angle, c_white, 1);
	}
}

draw_self(); // Se desenhando

// Indicador

if (instance_exists(DBground_obj))
{
	if (DBground_obj.itime = 1)
	{
		if (!Controll_obj.mouse) draw_sprite_ext(R01_spr, Controll_obj.Fr, x, y + 70, .10,.10,0,c_white, 1);
		if (Controll_obj.mouse) draw_sprite_ext(Mow_spr, Controll_obj.Fr, x, y + 70, .10,.10,0,c_white, 1);
	}
}