// Mensagem em "papel"

if (showup)
{
	draw_sprite_ext(Test_spr, 0,room_width/2, room_height/2, 1,1,0,c_white,1);
	
	// Desativando
	
	if (keyboard_check_pressed(vk_backspace))
	{
		showup = false;
		Controll_obj.blus = 0;
		Controll_obj.quest01 = true;
		Teleporter_obj.lock = false;
		instance_destroy();
	}
}