// Teclas
esq = keyboard_check(vk_left);
di = keyboard_check(vk_right);

//Movimento

if (esq)
{
	x -= 5;	
	image_xscale = -3;
	sprite_index = PPlayerunning_spr2;
}

if (di)
{
	x += 5;
	image_xscale = 3;
	sprite_index = PPlayerunning_spr2;
}

if (keyboard_check_released(vk_left) || keyboard_check_released(vk_right)) sprite_index = PPlayer_spr;
// Ditando alpha

image_alpha = (Controll_obj.At * -1) + 1;

// Caixas

if (keyboard_check(ord("W")) && x > 664 && x < 744)
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
