//Movimento

if (x <= limitx)
{
	if (keyboard_check(ord("D")))
	{
		x += SP;
		sprite_index = Rune;
		image_xscale = .35;
		// ??
		if (instance_exists(Controll_obj)) Controll_obj.Ow = false;
	}
	// Sendo empurrado
	if (Controll_obj.Not && Controll_obj.Sm == 1)
	{
		x += .4;
	}


}
if (x >= limitxi)
{
	if (keyboard_check(ord("A")))
	{
		x -= SP;
		sprite_index = Rune;
		image_xscale = -.35;
		if (instance_exists(Controll_obj)) Controll_obj.Ow = false;
	}
	// Sendo empurrado
	if (Controll_obj.Not && Controll_obj.Sm == 0)
	{
		x -= .4;
	}
}
// --[Moldando animações]--
if (keyboard_check_released(ord("A")) || keyboard_check_released(ord("D")))
{
	sprite_index = Idol;	
}
// Levanto e baixo
if (sprite_index == Baixo_spr && image_index >= 6) // Image 7
{
	sprite_index = Baixo2_spr;
	SP = 2;
	Idol = 	Baixo2_spr;
	Rune = BaixoU_spr;
}
if (sprite_index == Cima_spr && image_index >= 7)
{
	sprite_index = PlayerES_spr;
	SP = 2;
	Idol = 	PlayerES_spr;
	Rune = PlayerES2_spr;
}
// Moldando limites
if (keyboard_check_pressed(ord("S")) && sprite_index == Idol && Idol != Baixo2_spr && !Controll_obj.Inv)
{
	sprite_index = Baixo_spr;
}
if (keyboard_check(ord("S")) && Idol == Baixo2_spr)
{
	// Máximo dos limites
	limitx = 768;	
	limitxi = 192;
	Rune = BaixoU_spr;
	SP = 1;
	// Janela
	if (Controll_obj.window) Controll_obj.window = false;
}
// Quando solto o S...
if (!keyboard_check(ord("S")) && sprite_index != Rune)
{
		// Travando...
	if (x >= 450 && x <= 500 && Idol == Baixo2_spr)
	{
		SP = 0;
		Rune = Baixo2_spr;
		sprite_index = Baixo2_spr;
	}
	else
	{
		if (Idol == Baixo2_spr || Idol == BaixoU_spr)
		{
			sprite_index = Cima_spr;
			if (sprite_index == Cima_spr && image_index >= 3)
			{
				Idol = PlayerES_spr;
				Rune = PlayerES2_spr; 
			}
		}
		
	}
}
// Empurrando para ajustes
if (Idol = PlayerES_spr)
{
	if (x > 400 && x <= 450) x -= 3;
	if (x < 550 && x >= 500) x += 3;
}
// S solto
if (!keyboard_check(ord("S")))
{
	if (Idol == PlayerES_spr)
	{
		// Define o primeiro limite
		if (x >= 550)
		{
			limitxi = 550;
			limitx = 732;
		}
		// Define o último limite
		if (x <= 400)
		{
			limitx = 400;	
			limitxi = 210;
		}
	}
}