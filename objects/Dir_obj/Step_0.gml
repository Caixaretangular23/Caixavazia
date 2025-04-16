if (instance_exists(Controll_obj))
{
	if (!Controll_obj.Phone) instance_destroy(); 	
}

//Imagens alfas
if (room == Menu_01) image_alpha = .7;
if (room == Game01) image_alpha = .5;

// Toque teste

if (mouse_check_button(mb_left) && place_meeting(x,y, Touch_obj)) keyboard_key_press(vk_right);	