draw_self();
// Indicador

 if (Controll_obj.YInd == 256 && instance_exists(Controll_obj))
 {
	if (Controll_obj.slot01 > 0 && place_meeting(x,y, Player_obj))draw_sprite_ext(Zkey_spr, 0, x, y - 50, .5,.5,0,c_white,1);
 }