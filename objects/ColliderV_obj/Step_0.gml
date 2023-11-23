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
	sprite_index = CursorP_spr;
	image_xscale = 2;
	image_yscale = image_xscale;
	image_alpha = .5;
	// Posições
	x = mouse_x;
	y = mouse_y;
}