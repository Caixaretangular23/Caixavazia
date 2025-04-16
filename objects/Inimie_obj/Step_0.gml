image_alpha = 1 - Alpa;
if (image_xscale > 0) image_yscale = image_xscale;
if (image_xscale < 0) image_yscale = image_xscale * -1;
// Gravidade
Gravity_scr();

// Propriedade de velocidade
direction = point_direction(x,y,Player_obj.x, Player_obj.y);

// Aumentando dificulade

if (instance_exists(Controll_obj))
{
	if (Controll_obj.Event == 2)
	{
		if (speed < 3) speed = 3;
	}
}

// Lado
if (x > Player_obj.x + 10 && image_xscale > 0) image_xscale *= -1;
if (x < Player_obj.x - 10 && image_xscale < 0) image_xscale *= -1;
// Escada

if (place_meeting(x,y, Escada_obj))
{
	S = 0;
	y -= 5;
}

// jump!

if (place_meeting(x,y, Player_obj) && hit == 0 && sprite_index == Inimie_spr)
{
	with(Player_obj)
	{
		S = -15;
		if (!aperta && !solta) aperta = true;
		image_blend = c_yellow;
		alarm[0] = room_speed * .1;
		// Removendo "trapaça"
		if (instance_exists(EnergyP_obj)) EnergyP_obj.pros -= .5;
	}
	if (Controll_obj.Event == 3) Energy = -.5;
	hit++;
}
else
{
	if (hit != 0) hit = 0;	
}
// Se desativando

if (Controll_obj.Not && Controll_obj.Event != 3)
{
	Controll_obj.Hand = false;
	instance_destroy();
}

// Finalização

if (Controll_obj.Event == 3)
{
	TradeT++;
	
	// adicionando formas
	
	if (TradeT >= room_speed*5)
	{
		TradeF++;
		audio_play_sound(IniT,1,false);
		TradeT = 0;
	}
	// limite
	
	if (TradeF > 2) TradeF = 0;
	
	// Resultando sprites
	
	if (TradeF == 0)
	{	
		if (image_xscale < start_sx && image_xscale > 0) image_xscale += .01
		// Iniciando Transição
		if (sprite_index != Trans03_spr && sprite_index != Inimie_spr)sprite_index = Trans03_spr;
		// Finalizando Transição
		if (sprite_index == Trans03_spr && image_index >= 5) sprite_index = Inimie_spr;
	}
	if (TradeF == 1)
	{
		if (image_xscale < start_sx - .1 && image_xscale > 0) image_xscale -= .01
		if (image_xscale > start_sx + .1 && image_xscale < 0) image_xscale += .01
		// Iniciando Transição
		if (sprite_index != Trans01_spr && sprite_index != Bot_spr)sprite_index = Trans01_spr;
		// Finalizando Transição
		if (sprite_index == Trans01_spr && image_index >= 5) sprite_index = Bot_spr;
	}
	if (TradeF == 2)
	{
		if (image_xscale < start_sx - .17 && image_xscale > 0) image_xscale -= .01
		if (image_xscale > start_sx + .17 && image_xscale < 0) image_xscale += .01
		S = 0;
		if (sprite_index != Trans02_spr && sprite_index != EB_spr)sprite_index = Trans02_spr;
		// Finalizando Transição
		if (sprite_index == Trans02_spr && image_index >= 5) sprite_index = EB_spr;
	}
}