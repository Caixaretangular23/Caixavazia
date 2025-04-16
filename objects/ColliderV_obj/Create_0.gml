// Configuração de imagem
image_xscale = 2;
image_yscale = 5;
image_alpha = 0;

if (room == Nada)
{
	image_xscale = 1;
	image_yscale = 1;
	image_alpha = .5;
}

// Setando posições iniciais

if (instance_exists(Controll_obj) && !Controll_obj.mouse)
{
	
	x = room_width/2;
	y = room_height/2;
}