image_xscale = .3;
image_yscale = .3;
// Se destruindo

if (instance_exists(Controll_obj))
{
	if (Controll_obj.slot01 || (Controll_obj.Ton != 0 && room == Stelf_tubo_04))
	{
		instance_destroy();	
	}
}

onfloor = false
S = 0;

