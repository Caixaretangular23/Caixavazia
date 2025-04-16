if (place_meeting(x,y,Player_obj) && room == RoomP01_03)
{
	if (x > Player_obj.x - 5) draw_text_color(x + 15,y,"W",c_black,c_black,c_black,c_black,1); 
	if (x < Player_obj.x) draw_text_color(x - 64,y,"W",c_black,c_black,c_black,c_black,1); 
}