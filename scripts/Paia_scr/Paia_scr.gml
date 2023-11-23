// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Paia_scr(){
	if (aperta)
	{
		// Lado (+)
		if (image_xscale > 0)
		{
			if (image_xscale >= xs/2)
			{
				// Deformando...
				image_xscale -= .3 * xs;
				image_yscale += .3 * xs;
			}
			else
			{
				solta  = true;	
			}
		}
		
		// Lado (-)
		if (image_xscale < 0)
		{
			if (image_xscale <= -(xs/2))
			{
				// Deformando...
				image_xscale += .3 * xs;
				image_yscale += .3 * xs;
			}
			else
			{
				solta  = true;	
			}
		}
		
		// desativando a "apertagem"
		if (solta) aperta = false;
	}
	
	if (solta)
	{
		// Lado (+)
		if (image_xscale > 0)
		{
			if (image_xscale <= xs)
			{
				//Desdeformando...
				image_xscale += .1 * xs;
				image_yscale -= .1 * xs;
			}
			else
			{
				// Finalizando...
				solta = false;
				
				image_xscale = xs;
				image_yscale = xs;
			}
		}
		
		// Lado (-)
		if (image_xscale < 0)
		{
			if (image_xscale >= -xs)
			{
				image_xscale -= .1 * xs;
				image_yscale -= .1 * xs;
			}
			else
			{
				solta = false;
				// Voltando ao normal
				image_xscale = -xs;
				image_yscale = xs;
			}
		}
	}
}