// Debug mode
if (global.debugB)
{
	draw_text_color(20,20, "Modo: " + string(Mode), c_white,c_white,c_white,c_black, 1);
	draw_text_color(20,40, "Peach:  " + string(PeAchao), c_white,c_white,c_white,c_black, 1);
	draw_text_color(20,80, "Event:  " + string(Event), c_white,c_white,c_white,c_black, 1);
}
// Início
if (room == RoomP01_03)
{
	// Desenhando
	if (BB && instance_exists(Player_obj) && instance_exists(Inter_obj))
	{ 
		// Desenhando o espaço
		draw_sprite_ext(Test_spr, 0, room_width/2, room_height/2, room_width/64, room_height/64, 0, c_white, 1);	
		// Desenhando o botão
		draw_sprite_ext(Inter_obj.sprite_index,Inter_obj.image_index, 480, 320, .3,.3, 0, c_white, 1);
		// Desenhando todo  o player
		if (instance_exists(Player_obj))
		{
			if (!instance_exists(T_obj)) draw_sprite_ext(Player_obj.sprite_index, Player_obj.image_index, Player_obj.x, Player_obj.y, Player_obj.image_xscale, Player_obj.image_yscale, 0, c_white, 1);
			if (instance_exists(T_obj)) draw_sprite_ext(Player_obj.sprite_index, Player_obj.image_index, Player_obj.x, Player_obj.y, Player_obj.image_xscale, Player_obj.image_yscale, 0, c_white, (T_obj.Aes * -1) + 1);
		}
	}
	// Desativando [Inter_obj]
}
// Indicador de saída
if (instance_exists(Controll_obj) && Controll_obj.Ow)
{
	if (room == RoomP01_03 || room == Stelf_tubo_04 || room == Nada)
	{
		draw_sprite_ext(Es01_spr, Fr, 64,34, .15, .15, 0, c_white, 1);	
	}
}
if (Controll_obj.MovT == false) Controll_obj.Ow = false	


// [Eventos de BOOT]

// BOOT01
if (room == Boot_00)
{
	// Sequência de nomes
	if (boottime <= room_speed*3)draw_text(room_width/2, room_height/2,"Caixa");
	if (boottime <= room_speed*6 && boottime > room_speed*3) draw_text(room_width/2 - 64, room_height/2,"Feita por: Paulo");
	if (boottime < room_speed*9 && boottime > room_speed*6) draw_text(room_width/2 - 128, room_height/2,"Ston3 ajudou, cara top :)");
	if (boottime >= room_speed*9)
	{
		if (!instance_exists(T_obj)) instance_create_layer(0,0,"Instances_UP", T_obj);
		
		T_obj.De = Menu_01;
		/*
		boottime = room_speed*9;
		// Mensagem
		draw_sprite_ext(PaperO_spr,0, room_width/2, room_height/2 + 125, .15, .15, -90, c_white, 1);
		draw_text(room_width - 220, room_height/2, "Tente W para continuar")
		
		if (keyboard_check_pressed(ord("W")))
		{
			room_goto(Menu_01);
		} */
		// Reset
	}
}

// Entrando no prólogo BOOT02
if (room == Boot2_07)
{
	
	if (boottime >= room_speed*3)
	{
		if (!instance_exists(T_obj)) instance_create_layer(0,0, "Instances", T_obj);
		T_obj.De = RoomP01_03;
		T_obj.co = c_white;
		boottime = 0;
	}
	
	if (instance_exists(T_obj))	draw_sprite_ext(T_spr,0, room_width/2, room_height/2, 1, 1, 0, c_white, (T_obj.Aes * -1) + 1);
	if (!instance_exists(T_obj)) draw_sprite_ext(T_spr,0, room_width/2, room_height/2, 1, 1, 0, c_white, 1);
}

// Entrando no Game 01 BOOT03
if (room == Boot3_08)
{
	if (boottime >= room_speed*7)
	{
		if (!instance_exists(T_obj))
		{
			instance_create_layer(0,0,"Instances_UP",T_obj);
			T_obj.De = Game01;
			T_obj.co = c_black;
			boottime = 0;
			Event = 0;
		}
	}
	// Mostrando texto
	if (!instance_exists(T_obj)) draw_sprite_ext(T02_spr,0, room_width/2, room_height/2, 4, 4, 0, c_white, 1);
}

//-- [Game01] --

if (Boss)
{
	if (room == Game01)
	{
		// Vida do chefe
		draw_sprite_ext(Test_spr, 0, room_width/2, 20, 100/15, .5, 0,c_black, 1);
		draw_sprite_ext(Test_spr, 0, room_width/2, 20, Lb/15, .5, 0,c_white, 1);
		draw_text_color(room_width/2 - 70, 15,"Pontos: " + string(Controll_obj.Tb), c_black, c_black, c_black, c_black, 1);
	}
}
// Record
if (instance_exists(DBground_obj))
{
	if (DBground_obj.itime >= 1 && Controll_obj.Mode == 1)
	{
		draw_text_color(room_width/2 - 70, 15,"Recorde: " + string(Controll_obj.Tf)  , c_white, c_white, c_yellow, c_orange, 1);
	}
}
// Barras(...)
if (room == Game01)
{
	// Imagem a fora
	if (!instance_exists(T_obj))
	{
		draw_sprite_ext(Lb_spr,Sf,80,room_height/2,1,1,0,c_white,1);
		draw_sprite_ext(Lr_spr,Sf02,room_width - 80,room_height/2,1,1,0,c_white,1);
	}
	else
	{
		draw_sprite_ext(Lb_spr,Sf,80,room_height/2,1,1,0,c_white,(T_obj.Aes * -1) + 1);
		draw_sprite_ext(Lr_spr,Sf02,room_width - 80,room_height/2,1,1,0,c_white,(T_obj.Aes * -1) + 1);
	}
	
	// Variando a barra da esquerda
	if (keyboard_check(vk_left)) Sf = 2;
	if (keyboard_check(vk_right)) Sf = 1;
	if (!keyboard_check(vk_left) && !keyboard_check(vk_right)) Sf = 0;
	// Variando a barra da direita
	if (!mouse)
	{
		if (keyboard_check_pressed(ord("W"))) Sf02 = 1;
		if (keyboard_check_released(ord("W"))) Sf02 = 0;
	}
	else
	{
		if (keyboard_check_pressed(vk_control)) Sf02 = 1;
		if (keyboard_check_released(vk_control)) Sf02 = 0;
	}
}
// Sinalização

if (room == Game01)
{
	if (Beat) draw_sprite_ext(TVD_spr121, Fr, room_width/2, room_height/2, 2, 2, 0, c_white, 1);	
	if (Pause && !Beat) draw_sprite_ext(TVD_spr120, Fr, room_width/2, room_height/2, 2, 2, 0, c_white, 1);
}
// Permissões especiais
if (global.debugB){
	draw_set_color(c_grey);
	// Instruções no papel
	if (instance_exists(Paper01_obj) && Paper01_obj.showup) draw_text(20, 450, "Aperta Backspace para voltar");
	draw_set_color(c_white);
}

// Gerando uma janela

if (windowa > 0) draw_sprite_ext(winspr, 0,room_width/2, room_height/2, 1,1,0,c_white,windowa);
if (window <= 0 && !window) winspr = PaperH1_spr;
 
// Inventário

draw_sprite_ext(PaperH1_spr, 0,Xinv,240, 1,1, 90,c_white,1);	

if (Inv)
{
	//draw_sprite_ext(SKI_spr, Fr, (Xinv + (Xinv * -1.8)) + 128,234, 2,2,0,c_white, 1);
}

// Itens no inventário

if (slot01 > 0)
{
	draw_sprite_ext(Icon03_spr, 0,Xinv + (Xinv * -1.8), 384,.15,.15,0, c_white, (Xinv/100) + 1.9);	
}
if (slot02 > 0) draw_sprite_ext(Icon01_spr, 0,Xinv + (Xinv * -1.8), 256,.15,.15,0, c_white, (Xinv/100) + 1.9);	
if (slot03 > 0) draw_sprite_ext(IIncon_spr, 0, Xinv + (Xinv * -1.8), 128, .15, .15, 0, c_white, (Xinv/100) + 1.9);
// Seletor
draw_sprite_ext(Tg02_spr, 0,Xinv + (Xinv * -1.8),YInd, 1,1, 90,c_white,(Xinv/100) + 1.5);
// Pano
if (YInd == 128 && slot03 > 0)
{
	// --Fundo--
	draw_sprite_ext(Pano_spr, 0,(Xinv + (Xinv * -1.8)) + (128*3),room_height/2, 1,1, 0,c_white,(Xinv/100) + 1.9);
	// --Blocos--
	if (PeAchao01) draw_sprite_ext(BlockV_spr, 0,(Xinv + (Xinv * -1.8)) + 156,120, .05,.05, 0,c_white,(Xinv/100) + 1.9);
	if (Bobox01) draw_sprite_ext(BlockC_spr, 0,(Xinv + (Xinv * -1.8)) + 156 + (128),120, .05,.05, 0,c_white,(Xinv/100) + 1.9);
	if (Eney01) draw_sprite_ext(BlockE_spr, 0,(Xinv + (Xinv * -1.8)) + 156 + (128 * 2),120, .05,.05, 0,c_white,(Xinv/100) + 1.9);
	if (Jumb01) draw_sprite_ext(BlockJ_spr, 0,(Xinv + (Xinv * -1.8)) + 156 + (128 * 3),120, .05,.05, 0,c_white,(Xinv/100) + 1.9);
	if (PeAchao0) draw_sprite_ext(Block_spr, 0,(Xinv + (Xinv * -1.8)) + 156 + (128 * 4),120, .05,.05, 0,c_white,(Xinv/100) + 1.9);
	// --Selecionador--
	if (instance_exists(Player_obj) && instance_exists(Bag_obj))
	{
		// Se o player estiver na bolsa
		if (Inv)
		{
			if (Player_obj.x > Bag_obj.x - 50 && Player_obj.x < Bag_obj.x + 50)
			{
					// Desenhando...
					draw_sprite_ext(Selec_spr, 0,(Xinv + (Xinv * -1.8)) + (156 + Xbag),150, .5,.5, 0,c_white,(Xinv/100) + 1.9);
				
					// Mudando pos do sel.
					if (keyboard_check_pressed(ord("D")) && Xbag < 512 && YInd == 128) Xbag += 128;
					if (keyboard_check_pressed(ord("A")) && Xbag > 0 && YInd == 128) Xbag -= 128;
				
					// Trocando powerUP
					if (Xbag == 0 && PeAchao01 = true) PeAchao = true;
					else
					{
						PeAchao = false
					}
				
					if (Xbag == 128 && Bobox01 = true) Bobox = true;
					else
					{
						Bobox = false
					}
					if (Xbag == 256 && Eney01 = true) Eney = true;
					else
					{
						Eney = false
					}
					if (Xbag == 384 && Jumb01 = true) Jumb = true;
					else
					{
						Jumb = false
					}
					if (Xbag == 512 && PeAchao0 = true) PeAchao02 = true;
					else
					{
						PeAchao02 = false
					}
			}
			else
			{
				draw_sprite_ext(Ac_spr, 0,(Xinv + (Xinv * -1.8)) + (156 + Xbag),150, .5,.5, 0,c_white,(Xinv/100) + 1.9);	
			}
			// Outra ocasião
			if (!instance_exists(Bag_obj)) draw_sprite_ext(Ac_spr, 0,(Xinv + (Xinv * -1.8)) + (156 + Xbag),150, .5,.5, 0,c_white,(Xinv/100) + 1.9);
		}
	}
}
// --[Stelf]--
// Indicador (Stelf)

if (room == Stelf_tubo_04)
{
	// Bloco do meio
	draw_sprite_ext(Test_spr, 0, 480, Qp, 2, 2, 45, c_black, .5);
	
	// Desenhando linhas
	
	if (Not == false)
	{
		draw_sprite_ext(Lines_spr, 0, 140, 32, .5, .5, 0, c_white, 1);
		draw_sprite_ext(Lines_spr, 0, 886, 32, .5, .5, 0, c_white, 1);
	}
	else
	{
		draw_sprite_ext(Lines_spr, Fb, 140, 32, .5, .5, 0, c_white, 1);
		draw_sprite_ext(Lines_spr, Fb, 886, 32, .5, .5, 0, c_white, 1);
	}
	
	// Desenhando o indicador
	if (instance_exists(Controll_obj) && Controll_obj.Actp02)
	{
		if (Stelp_obj.x > 384 && !Controll_obj.Inv)
		{
				draw_sprite_ext(S01_spr, Controll_obj.Fr, room_width/2, room_height - 45, .15,.15,0,c_white, 1);
		}
		// Desativando o mesmo
		if (Stelp_obj.x > room_width/2) Controll_obj.Actp02 = false;
	}
}

// --[Outras rooms]--

if (room == Energy_05 || room == EnergyX_06)
{
	if (!Not) draw_sprite_ext(Test_spr, 0, room_width/2,room_height/2, room_width/64, room_height/64, 0, c_black, .45);	
}

if (room == Stelf_tubo_04)
{
	if (!Not) draw_sprite_ext(Test_spr, 0, room_width/2,room_height/2, room_width/64, room_height/64, 0, c_black, Ls);	
	
	// Desenhando Fundo (sombra)
	
	// Aumentando alpha
	if (Stelp_obj.x > room_width/2 && Ls < .45 && !Controll_obj.Not) Ls += .05; 
	// Diminuindo alpha
	if (Stelp_obj.x < room_width/2 && Ls > 0) Ls -= .05;
}

// Spawnando bot
if (Hbx != noone && Hby != noone)
{
	if (!instance_exists(Inimie_obj))
	{
		if (room == Energy_05 && Event < 3) draw_sprite_ext(Bot_spr, Fb, Hbx, Hby, .5,.5, 0, c_white, 1);	
		if (room == RoomP01_03 && Event == 3) draw_sprite_ext(Bot_spr, Fb, Hbx, Hby, .5,.5, 0, c_white, 1);	
	}
}

// Cabo

if (room == End)
{
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2, "fim (cutscena pretendida)");
}