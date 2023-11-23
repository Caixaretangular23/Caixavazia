draw_self();

if (place_meeting(x + 10,y, Chao_obj) && room == Energy_05)
{
	xx = x;
	repeat((x/64) + 1)
	{
		draw_sprite_ext(Floor3_spr, 0, xx, y, image_xscale, image_yscale,0,c_white, 1);
		xx -= 64;
	}
}