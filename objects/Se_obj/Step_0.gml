image_yscale = image_xscale; // Obrigando a proporção
//Tirando a janela
if (keyboard_check_pressed(vk_enter))
{
	if (Controll_obj.window) Controll_obj.window = false;	
}
if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left))
{
	if (Controll_obj.window) Controll_obj.window = false;	
}
// Variando a var

if (Option <= 1 && keyboard_check_pressed(vk_right))
{
	Option++;	
	if (Controll_obj.window) Controll_obj.window = false;
	audio_play_sound(NStickM, 5, false);
}

if (Option > 0 && keyboard_check_pressed(vk_left))
{
	Option--;
	if (Controll_obj.window) Controll_obj.window = false;
	audio_play_sound(NStickM, 5, false);
}

// Definindo limites

if (Option >= 2) Option = 2;
if (Option <= 0) Option = 0;

// Influências de "Option"
if (Option == 2 && card == 0)
{
	image_xscale = .7;
	sprite_index = Exitmenu_spr;	
	if (keyboard_check_pressed(vk_enter)) game_end();
}
if (Option == 1 && card == 0)
{
	image_xscale = .7;
	sprite_index = Playmenu_spr;
	Controll_obj.window = false // desativando
	if (keyboard_check_pressed(vk_enter) && transtime >= room_speed)
	{
		card = 1;
		Option = 0;
		transtime = 0;
		if (instance_exists(Controll_obj)) Controll_obj.AcTo = false;
	}
}
if (Option == 0)
{
	image_xscale = .7;
	sprite_index = Start_spr;

	if (keyboard_check_pressed(vk_enter) && transtime >= room_speed && card == 0)
	{
		instance_create_layer(0,0,"Instances_UP", T_obj);
		T_obj.co = c_white;
		T_obj.De = Boot2_07;
	}
}

// Configuração de tempo dentre "cartas"

transtime++;

if (transtime >= room_speed)
{
	transtime = room_speed;
}