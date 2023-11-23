draw_self(); // Desenhando-se

// Atraindo Sombra
if (room == RoomP01_03) draw_sprite_ext(Chap_spr,0, room_width/2,room_height/2, 1,1,0, c_white, 1);

// Indicador (Room)

if (instance_exists(Controll_obj) && Controll_obj.MovT)
{
		Controll_obj.Espt++;
		
		if (instance_exists(Controll_obj) && Controll_obj.Espt >= room_speed*10) 
		{
			Controll_obj.Ow = false;
			draw_sprite_ext(Con01_spr, Controll_obj.Fr, x,y - 120, .15,.15,0,c_white, 1);
		}
}

