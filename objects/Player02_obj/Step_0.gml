// Incluindo scripts
Paia_scr();
Paia2_scr();
// Pause event
if (Controll_obj.Pause) image_speed = 0;
else {image_speed = 1};
// Input
left01 = keyboard_check(vk_left);
rigt01 = keyboard_check(vk_right);
left02 = keyboard_check_released(vk_left);
rigt02 = keyboard_check_released(vk_right);
jump = keyboard_check_pressed(vk_space);

// Movimento
if ((left01 || Esq) && Controll_obj.Pause == false) 
{
	x -= vel;
	// Aumente a velocidade no modo normal e loop
	if (instance_exists(Monitor_obj) && instance_exists(Controll_obj))
	{
		if (Controll_obj.PeAchao && vel > 0)
		{
			if (Controll_obj.Boss == false) x = x-Monitor_obj.D/2;
			if (Controll_obj.Boss) x = x-Controll_obj.Td/2;
		}
	}
	// Tamanho e animação
	if (!aperta && !solta && !apertado02 && !solta02) image_xscale = .3;
	if (onfloor && vel > 0) sprite_index = FRlayer_spr;
	// Tirando o indicador
	if (instance_exists(Controll_obj)) Controll_obj.MovT02 = false;
}
if ((rigt01 || Dir) && Controll_obj.Pause == false)
{
	x += vel;	
	// Aumente a velocidade no modo normal e loop
	if (instance_exists(Monitor_obj) && instance_exists(Controll_obj))
	{
		if (Controll_obj.PeAchao && vel > 0)
		{
			if (Controll_obj.Boss == false) x = x+Monitor_obj.D/2;
			if (Controll_obj.Boss) x = x+Controll_obj.Td/2;
		}
	}
	// Animação e tamanho
	if (!aperta && !solta && !apertado02 && !solta02) image_xscale = -.3;
	if (onfloor && vel > 0) sprite_index = FRlayer_spr;
	// Tirando o Indicador
	if (instance_exists(Controll_obj)) Controll_obj.MovT02 = false;
}
// Se pararem
if (onfloor)
{
	if (!Controll_obj.Phone)
	{
		if (!left01 && !rigt01) sprite_index = FPlayer_spr;
	}
	else
	{
		if (!Dir && !Esq) sprite_index = FPlayer_spr;
	}
}

// Pulo
if (jump && onfloor && Controll_obj.Pause == false && !instance_exists(Bullet_obj))
{
	S = -7;
	sprite_index = FJlayer_spr;
	aperta = true;
}
// Apertando
if (S >= 7 && !apertado02 && !solta02 && !onfloor) apertado02 = true;


if (onfloor == false && vel != 0)
{
	vel = 7;
}
if (onfloor && vel != 0) vel = 5; 

// "Teletransporte"

if (Controll_obj.Jumb)
{
	if (x <= 240 - 150) x = 720 + 80;
	if (x >= 720 + 150) x = 240 - 80;
}
else
{
	if (x <= 240 - 50)
	{
		x += vel;
		if (onfloor) sprite_index = FPlayer_spr;
	}
	if (x >= 720 + 50)
	{
		x -= vel;
		if (onfloor) sprite_index = FPlayer_spr;
	}
}

// Gravidade

if (!Controll_obj.Beat)
{
	if (place_meeting(x,y - 2,Chao_obj)) y -= 5;
	Gravity_scr();
}
else
{
	y += 5;	
}

// Remoção

if (y < -64) instance_destroy();
