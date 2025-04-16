if (card == 0) draw_self(); // Desenhando as funções principais

//Indicador

if (instance_exists(Controll_obj) && Controll_obj.AcTo && i <= room_speed*14) i++

if (i > room_speed*14 && Controll_obj.AcTo)
{
	draw_sprite_ext(En01_spr, Controll_obj.Fr, 64,32,.15,.15,0,c_white,1);	
}


// --Desenhando detalhes do menu[Primeira carta]--

// [Legenda]
if (card == 0)
{
	if (Option == 0)
	{
		if (!Controll_obj.Fim) draw_sprite_ext(In_spr, 0, x +157, y + 10, .35,.35,0,c_white, 1);
		if (Controll_obj.Fim)  draw_text_color(x + 100,y, "De novo...", c_purple, c_purple,c_blue,c_orange, 1);
	}
	if (Option == 1)
	{
		if (Arcad)
		{
			if (Controll_obj.Ar == false) draw_sprite_ext(Mod_spr, 0, x +157, y + 10, .35,.35,0,c_white, 1);
			if (Controll_obj.Ar) draw_sprite_ext(Bop_spr, 0, x +157, y + 20, .35,.35,0,c_white, 1);
		}
		else
		{
			if (Controll_obj.Ar == false) draw_sprite_ext(Bop_spr, 0, x +157, y + 20, .35,.35,0,c_white, 1);
		}
	}
	if (Option == 2) draw_sprite_ext(Exitt_spr, 0, x +170, y + 20, .5,.5,0,c_white, 1);
	if (Option == 3) draw_sprite_ext(Op_spr, 0, x +157, y + 20, .7,.7,0,c_white, 1);
}

// [Setas]

if (Option < Mx0) draw_sprite_ext(Ar_spr, 0, room_width/2,y + 87,.5,.5,0,c_white, 1);
if (Option > 0) draw_sprite_ext(Ar_spr,0, room_width/2, y + 87, -.5, .5, 0, c_white, 1);


// --Detalhes da segunda carta--

if (card == 1)
{
	// Controle de opções sem esprite
	if (Option == 0)
	{
		// Imagem
		draw_sprite_ext(Ar01_spr, image_index, 512, 256, 1, 1, 0, c_white, 1);
		// Nomes
		if (Controll_obj.Ar == false )draw_text_color(x + 137, y, "Arcade", c_grey,c_grey,c_grey,c_grey,1);
		if (Controll_obj.Ar)draw_text_color(x + 137, y, "Arcade", c_yellow,c_purple,c_orange,c_blue,1);
		if (keyboard_check_pressed(vk_enter) && transtime >= room_speed*.3 && !instance_exists(T_obj))
		{
			instance_create_layer(0,0,"Instances_UP", T_obj);
			T_obj.De = Game01;
			Controll_obj.Mode = 0;
		}
	}
	if (Option == 1)
	{
		// Imagem
		draw_sprite_ext(L01_spr, image_index, 512, 256, 1, 1, 0, c_white, 1);
		// Nomes
		draw_text_color(x + 135, y, "Loop", c_grey,c_grey,c_grey,c_grey,1);	
		if (keyboard_check_pressed(vk_enter) && transtime >= room_speed*.3 && !instance_exists(T_obj))
		{
			instance_create_layer(0,0,"Instances_UP", T_obj);
			T_obj.De = Game01;
			Controll_obj.Mode = 1;
		}
	}
	if (Option == 2)
	{
		// Imagem
		draw_sprite_ext(E01_spr, image_index, 512, 256, 1, 1, 0, c_white, 1);
		// Nomes
		draw_sprite_ext(Volt_spr, 0, x +170, y + 10, .35,.35,0,c_white, 1);
		if (keyboard_check_pressed(vk_enter) && transtime >= room_speed*.3 && !instance_exists(T_obj))
		{
			transtime = 0;
			card = 0;
			Option = 0;
			Mx0 = 2;
		}
	}
	
	// Volta(...)
	
	if (keyboard_check_pressed(vk_backspace))
	{
		card = 0;
		Option = 1;
	}
}

// --Detalhes da terceira carta--

if (card == 3)
{
	// Fullscren
	if (Option == 0)
	{
		// Variando estado
		if window_get_fullscreen()
		{
			if (keyboard_check_pressed(vk_enter) && transtime >= room_speed*.3)
			{
				window_set_fullscreen(false);
				transtime = 0;
			}
			// imagem
			draw_text_color(x + 80, y, "Tela cheia: Sim", c_black, c_black,c_black,c_black,1);
			draw_sprite_ext(Full_spr, image_index, 400, 256, .7, .7, 0, c_white, 1);
		}
		else
		{
			if (keyboard_check_pressed(vk_enter) && transtime >= room_speed*.3)
			{
				window_set_fullscreen(true);
				transtime = 0;
			}
			// Imagem
			draw_text_color(x + 80, y, "Tela cheia: Nao", c_black, c_black,c_black,c_black,1);
			draw_sprite_ext(Full_spr, image_index, 400, 256, .7, .7, 0, c_white, 1);
		}
	}
	// Saída
	if (Option == 1)
	{
		// Imagem
		draw_sprite_ext(E01_spr, image_index, 512, 256, 1, 1, 0, c_white, 1);
		// Nomes
		draw_sprite_ext(Volt_spr, 0, x +170, y + 10, .35,.35,0,c_white, 1);
		if (keyboard_check_pressed(vk_enter) && transtime >= room_speed*.3 && !instance_exists(T_obj))
		{
			transtime = 0;
			card = 0;
			Option = 0;
			Mx0 = 2;
		}
	}
}