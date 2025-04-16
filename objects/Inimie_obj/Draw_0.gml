draw_self();

draw_sprite_ext(HH_spr, Controll_obj.Fb,x,y,image_xscale,image_yscale,0,c_white,Alpa); // Fazendo a cabeça
if (x < 475 && x > 255)
{
	if (Alpa < 1) Alpa += .03;	
}
else
{
	if (Alpa > 0) Alpa -= .03;
}
// Barra de progresso

if (Controll_obj.Event == 3)
{
	// Adicionando
	if (TradeF == 2 && Controll_obj.Inv && Controll_obj.YInd == 256 && Controll_obj.slot02 > 0)
	{
		if (place_meeting(x,y, Player_obj))
		{
			Energy += .1;	
		}
	}
	// Mostrando barra
	if (Energy > 0)
	{
		draw_sprite_ext(Test_spr, 0, x, y - 50, 100/40, .3,0,c_black, 1);
		draw_sprite_ext(Test_spr, 0, x, y - 50, Energy/40, .3,0,c_white, 1);
	}
	
	// último ataque
	
	if (Energy >= 100) instance_destroy();
}