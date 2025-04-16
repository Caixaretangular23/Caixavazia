
// Camadas do fundo02 ativo
if (Monitor_obj.D < 10)
{
	if (itime <= 0)
	{
		ispin = true;
		audio_stop_sound(BoxSyheme);
		draw_sprite_ext(Top01_spr,3,480,240,1,1,0 * -1,c_white,1);
		draw_sprite_ext(Top01_spr,2,480,240,1,1,(ian + (Monitor_obj.U * .5)),c_white,1);
		draw_sprite_ext(Top01_spr,1,480,240,1,1,(ian + (Monitor_obj.U * .5)) * -1,c_white,1);
		draw_sprite_ext(Top01_spr,1,480,240,1,1.2,0,c_white,1);
		draw_sprite_ext(Top01_spr,0,480,240,1,1,0,c_white,1);
	
		// Tocando som
	
		if (start == false)
		{
			audio_play_sound(ChangeB,1,false);
			start = true;
		}
	}
	// Desenha o fundo01

	if (itime > 0)
	{
		if (!Controll_obj.Pause) Ly += 10; // Descendo a linha
		draw_sprite_ext(PH01_spr,0,room_width/2,room_height/2,1,1,ian,c_white,1); // Fundo
		draw_sprite_ext(LOP_spr,0,480,Ly,1,1,ian,c_white,1); // Linha
	}
}
if (Monitor_obj.D > 9 || room == Test)
{
	audio_stop_sound(BoxTheme);
	// Verde...
	draw_sprite_ext(Col_spr,0,room_width/2,room_height/2,1,1,0,c_white,1); // Fundo
	// Quadradinhos	
	yx = 0;
	Angx++;
	
	draw_sprite_ext(Ting_spr,0,room_width/2,room_height/2,1,1,0,c_white,1); 
}

// Trocando..

draw_set_color(c_white);
if (global.debugB) draw_text((room_width/2) -20,20, itime);