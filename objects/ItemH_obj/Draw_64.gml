// Manejando al
if (Al >= 1) Al = 1;
if (Al <= 0) Al = 0;

if (place_meeting(x,y,Player_obj)) Al -= .1;
else
{
	Al += .1;	
}

// Se desenhando
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white, Al);






