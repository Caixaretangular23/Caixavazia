// Dinâmico

Alphapower_scr();

// Limitando a negatividade
if (pros <= 0) pros = 0;
// Entrando em realidade

if (pros >= 100 && !instance_exists(T_obj))
{
	if (Controll_obj.slot03 == 0)
	{
		instance_create_layer(x,y,"Instances", T_obj);
		T_obj.De = Nada;
		T_obj.Ado = .005;
		audio_play_sound(Bye, 1, false);
		// Desativando o inventário
	
		Controll_obj.Inv = false;
	}
	else
	{
		Controll_obj.Not = true;	
	}
}
// Se tiver terminado?

if (Controll_obj.Not) sprite_index = EBO_spr;

//	Mostrando e desativando janela

if (place_meeting(x,y,Player_obj) && Controll_obj.slot02 <= 0 && Controll_obj.Not == false)
{
	// Mostrando
	if (keyboard_check_pressed(ord("W")) && !Controll_obj.Inv)
	{
		audio_play_sound(Energia,1,false);
		Controll_obj.winspr = BoxEne_spr;
		Controll_obj.window = true;
	}
	// Tirando
	if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(ord("A")))
	{
		if (Controll_obj.window) Controll_obj.window = false;
	}
}