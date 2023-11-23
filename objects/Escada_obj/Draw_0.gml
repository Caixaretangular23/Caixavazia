draw_self();
// Dessenhando preenchimento
if (x < room_width/2 && room == Energy_05)
{
	xx = x;
	repeat((x/64) + 1)
	{
		draw_sprite_ext(Floor3_spr, 0, xx, y, image_xscale, image_yscale,0,c_white, 1);
		xx -= 64;
	}
}