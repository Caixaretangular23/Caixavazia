draw_self();

if (!instance_exists(T_obj) && !Controll_obj.Not)
{

	// Ativando
	if (instance_exists(Controll_obj) && place_meeting(x,y, Player_obj))
	{
		// Acionando progresso
		if (Controll_obj.slot02 == 1 && Controll_obj.YInd == 256 && Controll_obj.Inv && pros < 101 && !Controll_obj.Not) pros += .25;
		else
		{
			pros -= .3;	
		}
		// Mostrando barra de progresso
		draw_sprite_ext(Test_spr, 0, x, y -150, 100/40, .3, 0, c_black, 1);
		draw_sprite_ext(Test_spr, 0, x, y -150, pros/40, .3, 0, c_white, 1);
	}
}