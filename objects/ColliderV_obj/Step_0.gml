// Seguindo Player
if (instance_exists(Player_obj) && Controll_obj.Inv == false)
{
	x = Player_obj.x;
	y = Player_obj.y;
	
	// Imagens e P.
	sprite_index = Simple_spr;

	image_xscale = 2;
	image_yscale = 5;
	image_alpha = 0;
}
else
{
	// Imagens e P.
	if (room == Nada && !Controll_obj.Inv) sprite_index = CursorP_spr;
	else
	{
		sprite_index = Cersor_spr;	
	}
	// Setando outras propriedades
	if ((instance_exists(Blackb_obj) && Blackb_obj.image_alpha > 0) || (Controll_obj.Inv && Controll_obj.mouse))
	{
		image_xscale = 2;
		image_yscale = image_xscale;
		image_alpha = .5;
		// Posições
		if (Controll_obj.mouse)
		{
			// Posições
			x = mouse_x;
			y = mouse_y;
		}
		else
		{
			if (keyboard_check_pressed(vk_left)) x -= 128;
			if (keyboard_check_pressed(vk_right)) x += 128;
			// Limites de tela
			if (x > room_width + 128) x = 0;
			if (x < -128) x = room_width;
		}
	}
	else
	{
		image_alpha = 0;	
	}
}