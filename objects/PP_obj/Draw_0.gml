
// Desenhando máquina
if (room == Nada)
{
	draw_sprite_ext(c_spr,0, 704, 384, 2,2,0,c_white, (Controll_obj.At * -1) + 1);
}

draw_self();

// Desenhando uma seta

if (!Mov) draw_sprite_ext(Arrows_spr, 0, x, y -100, 1.5,1.5,0,c_white, .5);