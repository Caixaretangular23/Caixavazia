Alphapower_scr();
Paia_scr();
// Inputs

left01 = keyboard_check(ord("A"));
rigt01 = keyboard_check(ord("D"));
left02 = keyboard_check_released(ord("A"));
rigt02 = keyboard_check_released(ord("D"));

// Movimentos

if (left01 && !place_meeting(x - 7,y - 10,Chao_obj) && !Controll_obj.Inv)
{
	x += Vel01;
	if (Vel01 > -Maxv) Vel01 -= Vel02;
	sprite_index = runa;
	if (!aperta && !solta) image_xscale = -0.35;
	// Desativando indicador (movimento)
	if (instance_exists(Controll_obj)) Controll_obj.MovT = false;
}
if (rigt01 && !place_meeting(x + 7,y - 10,Chao_obj) && !Controll_obj.Inv)
{
	x += Vel01;
	if (Vel01 < Maxv) Vel01 += Vel02;
	sprite_index = runa;
	if (!aperta && !solta) image_xscale = 0.35;
	// Desativando indicador (movimento)
	if (instance_exists(Controll_obj)) Controll_obj.MovT = false;
}
// Limites de velocidade

if (Vel01 >= Maxv) Vel01 = Maxv;
if (Vel01 <= -Maxv) Vel01 = -Maxv;
//if (Vel01 <= 0) Vel01 = 0;
if (left02 || rigt02)
{
	sprite_index = Player_spr;
	Vel01 = 0;
}
// Gravidade

if (!place_meeting(x,y + 5,blockS)) Gravity_scr();
// Consertando problema 01 como o chão

if (place_meeting(x, y-5, Chao_obj)) y -= 5;

// Salas de energia


if (room == Energy_05)
{
	if (image_xscale < 0)
	{
		if (x < 384 && x > 160)
		{
			Maxv = 2;
			Vel02 = .25;
			runa = EscP_spr;
		}
		if (x < 160)
		{
			Maxv = 5;
			runa  = Player_andando_spr;
			Vel02 = .5;
		}
	}
	if (image_xscale > 0)
	{
		if (x < 384 && x > 160)
		{
			Maxv = 2;
			Vel02 = .25;
			runa = EscP_spr;
		}
		if (x > 384)
		{
			Maxv = 5;
			Vel02 = .5;
			runa  = Player_andando_spr;
		}
	}
}