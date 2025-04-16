// Partículas

if (room == Stelf_tubo_04)
{
	draw_sprite_ext(Part01_spr, 0, 224, 383, 1,1,0,c_white, 1);
	draw_sprite_ext(Part01_spr, 0, 736, 383, 1,1,0,c_white, 1);
}
// Cabo

if (room == End)
{
	video += .4;
	if (!Fim) Fim = true;
	// Animation controll
	if (video < 322)
	{
		// Fundo 
		draw_sprite_ext (Fundo01_spr, 0, room_width/2, room_height/2, 1,1,0, c_white,1);
		// Animação
		if (video >= 70) draw_sprite_ext (Video01_spr, video - 69, room_width/2, room_height/2, 1,1,0, c_white,1);
	}
	else
	{
		if (video < 362) draw_sprite_ext (Video02_spr, video - 322, room_width/2, room_height/2, 1,1,0, c_white,1);
		if (video >= 361) draw_sprite_ext (Video03_spr, video - 362, room_width/2, room_height/2, 1,1,0, c_white,1);
		// Fundo
		draw_sprite_ext (Fundo02_spr, 0, room_width/2, room_height/2, 1,1,0, c_white,1);
	}
	// Finalizando
	if (video >= 450 && !instance_exists(T_obj))
	{
		instance_create_layer(0,0,"Instances_UP", T_obj);
		T_obj.De = Tchau;
		T_obj.Aup = .0007;
	}
}

// Adeus e valeu.

if (room == Tchau)
{
	draw_sprite_ext(Test_spr,0,room_width/2,room_height/2 + 16, 2,.5,0,c_white,1);
	draw_set_halign(fa_center);
	draw_text_color(room_width/2, room_height/2, "Obrigado.", c_black,c_black,c_black,c_black,1);
	draw_set_halign(fa_left);
}