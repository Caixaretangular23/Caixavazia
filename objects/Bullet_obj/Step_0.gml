
if (y < -20 || place_meeting(x,y, Caixa_obj))
{
	with(Caixa_obj)
	{
		if (place_meeting(x,y, Bullet_obj))
		{
			Grv = true;
			audio_play_sound(Bd, .5, false);
		}
	}
	// Sitema de colisão aqui...
	if (instance_exists(Caixa_obj) && y < Caixa_obj.ystart) Det = true
}// Se destruindo
image_angle += 10; // Girando

// Algumas regras
if (Det) image_alpha -= .1;
if (image_alpha <= 0) instance_destroy();