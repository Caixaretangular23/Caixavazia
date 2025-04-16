if (!instance_exists(T_obj) && !Controll_obj.Not)
{
	//[Indicador]

	if (instance_exists(Controll_obj) && Controll_obj.slot02 > 0 && !Controll_obj.Inv)
	{
		if (!Controll_obj.Not) draw_sprite_ext(I01_spr, Controll_obj.Fr, x, y - 150, .15, .15, 0,c_white, 1);
	}	
	
}