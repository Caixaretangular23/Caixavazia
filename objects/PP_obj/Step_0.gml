
// Teclas
esq = keyboard_check(vk_left);
di = keyboard_check(vk_right);

//Movimento

if ((instance_exists(Blackb_obj) && Blackb_obj.image_alpha <= 0) || !instance_exists(Blackb_obj))
{ 
	if (esq)
	{
		x -= 5;	
		image_xscale = -2;
		sprite_index = PPlayerunning_spr;
		if (!Mov) Mov = true;
	}

	if (di)
	{
		x += 5;
		image_xscale = 2;
		sprite_index = PPlayerunning_spr;
		if (!Mov) Mov = true;
	}

}
if (keyboard_check_released(vk_left) || keyboard_check_released(vk_right)) sprite_index = PPlayer_spr;
if (di && esq) sprite_index = PPlayer_spr;
// Ditando alpha

image_alpha = (Controll_obj.At * -1) + 1;

// Caixas

if (keyboard_check(vk_up) && x > 664 && x < 744)
{
	if (instance_exists(Controll_obj)) Controll_obj.Ow = false;
	if (Controll_obj.At < 1) Controll_obj.At += .05;	
}
else
{
	if (Controll_obj.At > 0) Controll_obj.At -= .05;	
}

// Limites

if (x > room_width + 64) x = -32;
if (x < -64) x = room_width + 32;
