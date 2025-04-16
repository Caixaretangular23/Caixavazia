// Cartaz 1
if (room == RoomP01_03)
{
	// Desenhando cartaz
	if (!Controll_obj.C01)
	{
		draw_sprite_ext(Cartaz03_Spr, 0, 160, 320, .5, .5, 0, c_white, 1);
		draw_sprite_ext(F01_spr, Controll_obj.Fb, 260, 384, .5, .5, 0, c_white, 1);
	}
	else
	{
		draw_sprite_ext(Cartaz03_Spr, 0, 160, 320, .5, .5, 0, c_white, 1);
		draw_sprite_ext(A01_spr, Controll_obj.Fb, 260, 384, .5, .5, 0, c_white, 1);
	}
	// Permitindo coleta
	if (instance_exists(Controll_obj) && Controll_obj.quest01)
	{
		if (keyboard_check_pressed(ord("W")))
		{
			if (Player_obj.x > 260 - 64 && Player_obj.x < 260 + 64)
			{
				Controll_obj.C01 = true;
				audio_play_sound(Caixa01, 1, false);
			}
		}
	}
}
// Cartaz 2
if (room == Energy_05) 
{
	// Desenhando cartaz
	if (!Controll_obj.C02)
	{
		draw_sprite_ext(A03_spr, Controll_obj.Fb, 352, 180, .5, .5, 0, c_white, 1);
	}
	else
	{
		draw_sprite_ext(F03_SPR, Controll_obj.Fb, 352, 180, .5, .5, 0, c_white, 1);
	}
	// Permitindo coleta
	if (instance_exists(Controll_obj))
	{
		if (keyboard_check_pressed(ord("W")))
		{
			if (Player_obj.x > 288 && Player_obj.x < 416)
			{
				if (Controll_obj.quest01)
				{
					Controll_obj.C02 = true;
					audio_play_sound(Caixa02, 1, false);
				}
				else
				{
					Controll_obj.window = true;	
					Controll_obj.winspr = Fake_spr;
				}
			}
		}
		// Train de janela
		if (Controll_obj.window == true)
		{
			if (keyboard_check(ord("A")) || keyboard_check(ord("D"))) Tj += .01;
			if (Tj > .7)
			{
				Controll_obj.window = false;
				Tj = 0;
			}
		}
	}
}
// Cartaz 3
if (room == EnergyX_06 && Controll_obj.Event > 0)
{
	// Desenhando
	if (!Controll_obj.C03)
	{
		draw_sprite_ext(F02_spr, Controll_obj.Fb, 640, 364, .5, .5, 0, c_white, 1);
		if (instance_exists(Va_obj)) Va_obj.image_alpha = 0;
	}
	else
	{
			draw_sprite_ext(A02_spr, Controll_obj.Fb, 640, 364, .5, .5, 0, c_white, 1);
	}
	// Permitindo coleta
	if (instance_exists(Controll_obj) && Controll_obj.quest01)
	{
		if (keyboard_check_pressed(ord("W")))
		{
			if (Player_obj.x > 576 && Player_obj.x < 704)
			{
				Controll_obj.C03 = true;
				audio_play_sound(Caixa03, 1, false);
			}
		}
	}
}

draw_self(); // Desenhando-se

// Atraindo Sombra

if (room == RoomP01_03)
{
	if (!instance_exists(Inimie_obj)) draw_sprite_ext(Chap_spr,0, room_width/2,room_height/2, 1,1,0, c_white, 1);
	else
	{
		Frame += .2;
		draw_sprite_ext(Fundo_spr,Frame, room_width/2,room_height/2, 1,1,0, c_white, 1);
	}
}
if (room == Energy_05)
{
	if !Controll_obj.Not
	{
		draw_sprite_ext(Chap03_spr,0, room_width/2,room_height/2, 1,1,0, c_white, 1);
		draw_sprite_ext(Head_spr, Controll_obj.Fb,x,y,image_xscale,image_yscale,0,c_white,Controll_obj.Alpa); // Fazendo a cabeça
		if (x < 475 && x > 255)
		{
			if (Controll_obj.Alpa < 1) Controll_obj.Alpa += .03;	
		}
		else
		{
			if (Controll_obj.Alpa > 0) Controll_obj.Alpa -= .03;	
		}
	}
	else
	{
		draw_sprite_ext(CC_spr,0, room_width/2,room_height/2, 1,1,0, c_white, 1);
	}
}
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

