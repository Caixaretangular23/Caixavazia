Movementx = noone// Velocidade H
Movementy = noone// velocidade V
// Tamanho...
image_xscale = 0;

sprite_index = BoxesT_spr; // Sprite inicial

// Trocando

if (instance_exists(Controll_obj))
{
	if (Controll_obj.BBr == 0)
	{
		sprite_index = BBoxesT_spr;
		Controll_obj.BBr++;
	}
}