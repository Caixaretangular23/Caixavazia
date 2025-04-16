// Desenhando o fundo

if (instance_exists(Se_obj) && Se_obj.Arcad == false) 
{
	instance_destroy(Machine_obj);
	instance_destroy(Se_obj);
}
if (instance_exists(Se_obj)) draw_sprite_ext(Wallpaper_spr,0,room_width/2, room_height/2,1,1,0,c_white,1);
else
{
		draw_sprite_ext(Wallpaper2_spr,0,room_width/2, room_height/2,1,1,0,c_white,1);
}

// Texto

draw_set_halign(fa_center);
draw_text_color(room_width/2, room_height -100, "Aperte Enter para iniciar", c_black,c_black,c_black,c_black,Ate);
draw_set_halign(fa_left);