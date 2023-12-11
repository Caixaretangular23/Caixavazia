draw_self();

// Barra de progresso

if (Controll_obj.Event == 3)
{
	// Adicionando
	if (TradeF == 1 && Controll_obj.Inv && Controll_obj.YInd == 256)
	{
		if (place_meeting(x,y, Player_obj))
		{
			Energy += .1;	
		}
	}
	// Mostrando barra
	if (Energy > 0)
	{
		draw_sprite_ext(Test_spr, 0, x, y - 50, 100/40, 1,0,c_black, 1);
		draw_sprite_ext(Test_spr, 0, x, y - 50, Energy/40, 1,0,c_white, 1);
	}
	
	// último ataque
	
	if (Energy >= 100) instance_destroy();
}