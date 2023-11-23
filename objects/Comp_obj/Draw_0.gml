draw_self();

draw_sprite_ext(Test_spr, 0, room_width/2, y - 20, 110/50, .5, 0 , c_black, 1);
// Barra de energia
if (Power > 20) draw_sprite_ext(Test_spr, 0, room_width/2, y - 20, Power/50, .3, 0 , c_white, 1);
if (Power < 20)
{
	// Interação em razão do mouse e teclado
	if (!Controll_obj.mouse)
	{
		// Teclado
		if (!keyboard_check(ord("R"))) draw_sprite_ext(Test_spr, 0, room_width/2, y - 20, Power/50, .3, 0 , c_maroon, 1);
		else
		{
			draw_sprite_ext(Test_spr, 0, room_width/2, y - 20, Power/50, .3, 0 , c_red, 1);
		}
	}
	else
	{
		// Mouse
		if (!mouse_check_button(mb_left)) draw_sprite_ext(Test_spr, 0, room_width/2, y - 20, Power/50, .3, 0 , c_maroon, 1);
		else
		{
			draw_sprite_ext(Test_spr, 0, room_width/2, y - 20, Power/50, .3, 0 , c_red, 1);
		}
	}
	
}

// Sinalizando o fim

if (Controll_obj.Ar) draw_sprite_ext(Wa_spr, 0, x - 35, y + 35, 1.3, 1.3, 0, c_white, 1);