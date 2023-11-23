// Começa pls
if (Bg && itime > 0) itime -= .008;

/*Force begin?
if (instance_exists(Controll_obj))
{
	if (itime < 1 && Controll_obj.Gm = false) Controll_obj.Gm = true;	
	
}
*/// Trocando de fundo(...)

if (global.debugB)
{
	if (keyboard_check_pressed(vk_backspace)) itime--;
	if (keyboard_check_pressed(vk_enter)) itime++;
	if (keyboard_check_pressed(vk_f3)) ispin = true;
	if (keyboard_check_pressed(vk_f4)) ispin = false;
}

// Girando(...)

if (ispin && Controll_obj.Pause == false) ian++;
if (!ispin) ian = 0;


if (Ly > room_height + 128) Ly = -128; // Controle de linha