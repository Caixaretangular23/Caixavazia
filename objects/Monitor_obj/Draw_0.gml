// Desenhando as esteiras
//{Esquereda}
draw_sprite_ext(Es_spr,Ae, 352,160, .3, .3, 0, c_white,image_alpha);
draw_sprite_ext(Es_spr,Ae, 200,160, .3, .3, 0, c_white,image_alpha);
//{Direito}
draw_sprite_ext(Es_spr,Ae, 608,160, .3, .3, 0, c_white,image_alpha);
draw_sprite_ext(Es_spr,Ae, 757,160, .3, .3, 0, c_white,image_alpha);

// Se desenhnado

draw_self();

// Desenhando os números

if (instance_exists(Controll_obj) && DBground_obj.itime <= 0)
{
	if (Controll_obj.Boss == false)
	{
		draw_sprite_ext(N0_spr, D, 455, 128, .3, .3,0,c_white,image_alpha);
		draw_sprite_ext(N0_spr, U, 505, 128, .3, .3,0,c_white,image_alpha);
	}
	if (Controll_obj.Boss)
	{		
		draw_sprite_ext(N0_spr, Controll_obj.Td, 455, 128, .3, .3,0,c_white,image_alpha);
		// Contador menor que 10 no chefe
		if (Controll_obj.Td < 10) draw_sprite_ext(N0_spr, 0, 505, 128, .3, .3,0,c_white,image_alpha);	
		// Contador maior que 10 no chefe
		if (Controll_obj.Td >= 10)
		{
			draw_sprite_ext(N0_spr, 1, 504, 107, .2, .2,0,c_white,image_alpha);
			draw_sprite_ext(N0_spr, 0, 504, 142, .2, .2,0,c_white,image_alpha);
		}
	}
}

// Win event (Modo arcade)

if (D > 9 && instance_exists(Controll_obj) && Controll_obj.Mode == 0)
{
	// Finalizando o jogo
	Controll_obj.Ar = true;  
	// Resetando pontuação
	Controll_obj.Md = 0;
	Controll_obj.Mu = 0;
}