draw_self(); // Desenhando-se

//Indicador

if (instance_exists(Controll_obj) && Controll_obj.MovT02)
{
		Controll_obj.Espt++;
		
		if (Controll_obj.Espt >= room_speed*10) draw_sprite_ext(Con04_spr, Controll_obj.Fr, x,y - 90, .15,.15,0,c_white, 1);
}
