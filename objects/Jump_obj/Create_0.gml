if (instance_exists(Controll_obj))
{
	if (!Controll_obj.Phone) instance_destroy(); 	
}

// Opacidade

if (room == Game01) image_alpha = .5;