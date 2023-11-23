// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Paia2_scr()
{
	if (apertado02)
	{
		if (image_yscale > xs/2)
		{
			// Deformando...
			image_yscale -= .3 * xs;
			
			if (image_xscale > 0)image_xscale += .3 * xs;
			else
			{
				image_xscale -= .3 * xs;
			}
		}
		else
		{
			solta02 = true;
		}
		
		// Desativando...
		if (solta02) apertado02 = false;
	}
	
	if (solta02)
	{
		if (image_yscale < xs)
		{
			// Desdeformando...
			image_yscale += .1 * xs;
			
			if (image_xscale > 0) image_xscale -= .1 * xs;
			else
			{
				image_xscale += .1 * xs;
			}
		}
		else
		{
			solta02 = false;	
		}
	}
	
}