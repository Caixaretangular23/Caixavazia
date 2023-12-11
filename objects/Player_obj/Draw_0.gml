// Cartaz 1
if (room == RoomP01_03)
{
	// Desenhando cartaz
	if (!Controll_obj.C01) draw_sprite_ext(Test_spr, 0, 160, 320, 1, 1, 0, c_white, 1);
	else
	{
		draw_sprite_ext(Simple_spr, 0, 160, 320, 1, 1, 0, c_white, 1);
	}
	// Permitindo coleta
	if (instance_exists(Controll_obj) && Controll_obj.quest01)
	{
		if (keyboard_check_pressed(ord("W")))
		{
			if (Player_obj.x > 96 && Player_obj.x < 224) Controll_obj.C01 = true;
		}
	}
}
// Cartaz 2
if (room == Energy_05) 
{
	// Desenhando cartaz
	if (!Controll_obj.C02) draw_sprite_ext(Test_spr, 0, 352, 192, 1, 1, 0, c_white, 1);
	else
	{
		draw_sprite_ext(Simple_spr, 0, 352, 192, 1, 1, 0, c_white, 1);
	}
	// Permitindo coleta
	if (instance_exists(Controll_obj) && Controll_obj.quest01)
	{
		if (keyboard_check_pressed(ord("W")))
		{
			if (Player_obj.x > 288 && Player_obj.x < 416) Controll_obj.C02 = true;
		}
	}
}
// Cartaz 3
if (room == EnergyX_06 && Controll_obj.Event > 0)
{
	// Desenhando
	if (!Controll_obj.C03) draw_sprite_ext(Test_spr, 0, 640, 268, 1, 1, 0, c_white, 1);
	else
	{
			draw_sprite_ext(Simple_spr, 0, 640, 268, 1, 1, 0, c_white, 1);
	}
	// Permitindo coleta
	if (instance_exists(Controll_obj) && Controll_obj.quest01)
	{
		if (keyboard_check_pressed(ord("W")))
		{
			if (Player_obj.x > 576 && Player_obj.x < 704) Controll_obj.C03 = true;
		}
	}
}

draw_self(); // Desenhando-se

// Atraindo Sombra

if (room == RoomP01_03) draw_sprite_ext(Chap_spr,0, room_width/2,room_height/2, 1,1,0, c_white, 1);
if (room == Energy_05 && !Controll_obj.Not) draw_sprite_ext(Chap03_spr,0, room_width/2,room_height/2, 1,1,0, c_white, 1);
if (room == EnergyX_06 && !Controll_obj.Not) draw_sprite_ext(Chap04_spr,0, room_width/2,room_height/2, 1,1,0, c_white, 1);
// Indicador (Room)

if (instance_exists(Controll_obj) && Controll_obj.MovT)
{
		Controll_obj.Espt++;
		
		if (instance_exists(Controll_obj) && Controll_obj.Espt >= room_speed*10) 
		{
			Controll_obj.Ow = false;
			draw_sprite_ext(Con01_spr, Controll_obj.Fr, x,y - 120, .15,.15,0,c_white, 1);
		}
}

