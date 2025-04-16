if (instance_exists(Controll_obj))
{
	if (!Controll_obj.Phone) instance_destroy(); 	
}

//Imagens alfas
if (room == Menu_01) image_alpha = .7;
if (room == Game01) image_alpha = .5;