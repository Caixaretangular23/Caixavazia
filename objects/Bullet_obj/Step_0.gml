
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
	instance_destroy();
}// Se destruindo
image_angle += 10; // Girando