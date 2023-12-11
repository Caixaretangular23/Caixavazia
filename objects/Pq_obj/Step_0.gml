
if (room = Energy_05) Controll_obj.blus = y;
// Gravidade

Gravity_scr();

// Variando Pq
if (y > 256 && Controll_obj.C == false && room == Energy_05)
{
	Controll_obj.C = true;
}
// coletando

if (place_meeting(x,y,Player_obj))
{
	// Se ativando
	if (keyboard_check_pressed(ord("W")))
	{
		showup = true;
	}
}

// Travando player

if (showup && instance_exists(Player_obj))
{
	Player_obj.x = x;
}

// Ligando o teletransporte

if (instance_exists(Player_obj))
{
	if ((Player_obj.x < x -30 && Player_obj.x > x-70) || Player_obj.x > x+30 && Player_obj.x < x+70) if (instance_exists(Teleporter_obj)) Teleporter_obj.lock = false;
	if (Player_obj.x > x-30 && Player_obj.x < x+30) if (instance_exists(Teleporter_obj)) Teleporter_obj.lock = true;
}

// Saindo de cena

if (y > (room_height*2) - 128)
{
	instance_destroy();
}