// Se destruindo nas condições
if (instance_exists(Controll_obj))
{
	if (Controll_obj.BB == false && room == RoomP01_03) instance_destroy();
}
else
{
	instance_destroy();	
}

// Mudando de SPR

if (room == Stelf_tubo_04) sprite_index = Button_spr;

mtime = 0; // Sei lá o que é isso kkkk

// Frescura de janela :(

Tj = 0;