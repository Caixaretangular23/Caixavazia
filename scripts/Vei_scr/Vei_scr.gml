// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Vei_scr()
{
	// Esquerda
	if (Ro == 1)
	{
		image_angle += 10;
		
		if (image_angle >= 15)
		{
			Rq++;
			Ro = -1;
		}
	}
	// Direita
	if (Ro == -1)
	{
		image_angle -= 10;

		if (image_angle <= -15)
		{
			Ro = 1;
			Rq++;
		}
	}
	
	// Terminar
	
	if (Rq >= 2 && image_angle == 0)
	{
		Ro = 0;
		image_angle = 0;
		Rq = 0;
	}
}