// Desenhando complemento

if (Controll_obj.mouse)
{
	if ((x > room_width/2 && Player02_obj.x > room_width/2) || (x < room_width/2 && Player02_obj.x < room_width/2))
	{
		if (Tge) Mtx = mouse_x;
	}
	// Desenhando o ca.
	draw_sprite_ext(A_spr, 0, x, y - 13, .3, .3, point_direction(x,y,Mtx, 128), c_white, 1);
}
else
{
		draw_sprite_ext(A_spr, 0, x, y - 13, .3, .3, point_direction(x,y,Tx02, 128), c_white, 1);
}

draw_self(); // Desenhando-se

// Dsenhando mira

if (Tge)
{
	draw_sprite_ext(Target_spr, 0, Tx, Ty,1,1,Ta,c_white,1);
	Ta++;
}

/* Qual a dificuldade?

if (instance_exists(DBground_obj) && DBground_obj.itime == 1)
{
	if (x < room_width/2)
	{
		draw_sprite_ext(Og_spr, 0, x, y - 80, .25, .25, 0, c_white, 1);
	}

	if (x > room_width/2)
	{
		draw_sprite_ext(Og_spr, 0, x, y - 80, .25, .25, 0, c_white, 1);
	}
}