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
	if (Option == 0) draw_text_color(x + 100,y, "Jogar [X]", c_black, c_black,c_black,c_black, 1);
	if (Option == 1)
	{
		if (Controll_obj.Ar == false) draw_text_color(x + 100,y, "Modos", c_black, c_black,c_black,c_black, 1);
		if (Controll_obj.Ar) draw_text_color(x + 100,y, "Modos", c_black, c_black,c_black,c_black, 1);
	}
	if (Option == 2) draw_text_color(x + 100,y, "Sair", c_black, c_black,c_black,c_black, 1);
}

// [Setas]

if (Option < 2) draw_sprite_ext(Ar_spr, 0, room_width/2,y + 87,.5,.5,0,c_white, 1);
if (Option > 0) draw_sprite_ext(Ar_spr,0, room_width/2, y + 87, -.5, .5, 0, c_white, 1);


// --Detalhes da segunda carta--

if (card == 1)
{
	if (Controll_obj.mouse)
	{
		draw_sprite_ext(Nowe_spr, 0, 619, 165, 1, 1, 0, c_white, 1);
	}
	else
	{
		draw_sprite_ext(Mowe_spr, 0, 619, 165, 1, 1, 0, c_white, 1);
	}
	// Controle de opções sem esprite
	if (Option == 0)
	{
		// Imagem
		draw_sprite_ext(Ar01_spr, image_index, 512, 256, 1, 1, 0, c_white, 1);
		// Nomes
		if (Controll_obj.Ar == false )draw_text_color(x + 137, y, "Arcade", c_grey,c_grey,c_grey,c_grey,1);
		if (Controll_obj.Ar)draw_text_color(x + 137, y, "Arcade", c_yellow,c_purple,c_orange,c_blue,1);
		if (keyboard_check_pressed(vk_enter) && transtime >= room_speed && !instance_exists(T_obj))
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
		if (keyboard_check_pressed(vk_enter) && transtime >= room_speed && !instance_exists(T_obj))
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
		draw_text_color(x + 135, y, "Voltar", c_grey,c_grey,c_grey,c_grey,1);	
		if (keyboard_check_pressed(vk_enter) && transtime >= room_speed && !instance_exists(T_obj))
		{
			transtime = 0;
			card = 0;
			Option = 0;
		}
	}
	
	// Volta(...)
	
	if (keyboard_check_pressed(vk_backspace))
	{
		card = 0;
		Option = 1;
	}
}