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

// Variando a menssagem
if (x > Player_obj.x + 10) image_xscale = -.57;
if (x < Player_obj.x - 10) image_xscale = .57;

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
	hit++;
}
else
{
	if (hit != 0) hit = 0;	
}
// Se desativando

if (Controll_obj.Not)
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
		TradeT = 0;
	}
	// limite
	
	if (TradeF > 2) TradeF = 0;
	
	// Resultando sprites
	
	if (TradeF == 0) sprite_index = Inimie_spr;
	if (TradeF == 1) sprite_index = EB_spr;
	if (TradeF == 2) sprite_index = Bot_spr;
	
}
