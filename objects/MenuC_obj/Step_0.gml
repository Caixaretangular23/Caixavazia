Fe += .2;
// Alpha de texto

if (Modo == "Cima" && Ate <= 1)
{
	Ate += .007;
}

if (Modo == "Baixo" && Ate >= 0)
{
	Ate -= .007;
}

// Mudando a cond.

if (Ate <= 0 && Modo == "Baixo") Modo = "Cima"
if (Ate >= 1 && Modo == "Cima") Modo = "Baixo"

// Permitindo o inícios

if (!instance_exists(Se_obj) && keyboard_check_pressed(vk_enter))
{
		audio_stop_sound(Menutamplate_sound);
		instance_create_layer(0,0,"Instances_UP", T_obj);
		T_obj.co = c_white;
		if (Controll_obj.BB)T_obj.De = Boot2_07;
		else
		{
			T_obj.De = RoomP01_03;
		}
}











