if (room == Boot_00 || room == Boot2_07 || room == Boot3_08) boottime++; // [Boot event]
// Impodo tempo depois do primeiro boot
if (room == Menu_01)
{
	Pause = false;
	if (boottime != 0) boottime = 0;  
}
// Pausando na perda
if (room != Menu_01 && Beat && !Pause) Pause = true;
// Voltando pro menu
if (Beat &&  !instance_exists(T_obj) && keyboard_check_pressed(vk_enter) && room == Game01)
{
	Beat = false;
	Pause = false;
	
	//Normal mode
	if (Mode == 2)
	{
		Mu2 = Monitor_obj.U;
		Mu2 = Monitor_obj.D;
	}
	// Arcade mode
	if (Mode == 0)
	{
		Mu = Monitor_obj.U
		Md = Monitor_obj.D;
	}
	room_restart();
}
// Controlle de pause
if (keyboard_check_pressed(ord("P")) && room == Game01) alarm[0] = room_speed*.5;
// Mouse system

if (instance_exists(Se_obj) && Se_obj.card == 1)
{
	if (mouse_check_button_pressed(mb_middle) && !mouse)
	{	
		mouse = true;
		
		window = true;
		winspr = PaperMow_spr;
	}
	if (keyboard_check_pressed(vk_control) && mouse)
	{
		if (window) window = false;
		
		
		mouse = false;
		Controll_obj.window = true;
		Controll_obj.winspr = PaperNow_spr;
	}
}

// Tremelique

if (global.debugB)
{
	if (keyboard_check_pressed(ord("Z")) && !instance_exists(shake_obj)) instance_create_layer(x,y,"Instances", shake_obj);	
}
// Indicador F.
if (Fre)
{
	Frt++;
	
	// Avançando a imagem
	if (Frt == room_speed && Fr == 0) Fr++;
	
	if (Frt == room_speed*2 && Fr == 1)
	{
		Frt = 0;
		Fr--;
	}
}
else
{
	Fr = 0;
	Frt = 0;
}

// Saindo...

if (keyboard_check_pressed(vk_escape) && !instance_exists(T_obj) && room != Menu_01)
{
	// Saindo da sala
	instance_create_layer(0,0,"Instances_UP", T_obj);
	// Tirando a perda?
	
	if (Beat) Beat = false;
	// Se estiver no jogo
	if (room == Game01 && Mode == 2)
	{
		T_obj.De = RoomP01_03;
		Los = 2;
	}
	else
	{
		// indo para a room ideia
		if (instance_exists(Monitor_obj) && Monitor_obj.D > 9)
		{
			if (Mode == 0) T_obj.De = Idea;
			if (Mode == 2) T_obj.De = End;
			T_obj.Aup = .01;
			T_obj.Ado = .005;
		}
		else
		{
			// Outras ocasiões
			T_obj.De = Menu_01;
		}
	}
	// Resetando posição
	if (room != Game01) Los = 0;
	// Parando os sons
	audio_stop_all();
	
	// Salvando ponyos
	if (instance_exists(Monitor_obj) && Boss == false)
	{
		// Modo arcade
		if (Mode == 0)
		{
			Mu = Monitor_obj.U;
			Md = Monitor_obj.D;
		}
		// Modo normal
		if (Mode == 2)
		{
			Mu2 = Monitor_obj.U;
			Md2 = Monitor_obj.D;
		}
	}
	// Resetando os pontos
	if (Ar)
	{
		Mu = 0;
		Md = 0;
	}
	// Vars C.
	if (instance_exists(Controll_obj))
	{
		Controll_obj.Ow = false;
		Controll_obj.Inv = false;
	}
	
	if (room == RoomP01_03 )
	{
		T_obj.co = c_black;
	}
	if (room == Stelf_tubo_04 || room == Nada)
	{
		T_obj.co = c_white;
	}
}
//  spawnanado o inimigo
if (room == Energy_05 && Md2 < 9)
{
	if (Hand && !instance_exists(Inimie_obj)) instance_create_layer(room_width/2, room_height/2, "Instances_UP", Inimie_obj);	
}

if (room == RoomP01_03 && Md2 == 9)
{
	if (Hand && !instance_exists(Inimie_obj)) instance_create_layer(room_width/2, room_height/2, "Instances_UP", Inimie_obj);
}
// Game01

if (room == Game01)
{
	// Tirando player com 10 pontos
	if (Mode == 2)
	{
		if (Monitor_obj.D == 1 && !instance_exists(T_obj) && Event == 0)
		{
			instance_create_layer(0,0,"Instances_UP", T_obj);
			T_obj.De = RoomP01_03;
			T_obj.co = c_white;
			slot03 = 1;
			Hand = true;
			window = true;
			Li = false; // O negócio do Light deve ser repensado...
			Not = false;
			audio_stop_all();
			Los = 2;
			// Salvando os pontos
			Md2 = Monitor_obj.D;
			Mu2 = Monitor_obj.U;
			// Adicionando evento
			Event++;
		}
	}
	// Tirando com 50 pontos
	if (Mode == 2 && Event == 1)
	{
		if (Monitor_obj.D == 5 && !instance_exists(T_obj))
		{
			instance_create_layer(0,0,"Instances_UP", T_obj);
			T_obj.De = RoomP01_03;
			T_obj.co = c_white;
			window = true;
			Hand = true;
			Li = false; // O negócio do Light deve ser repensado...
			Not = false;
			// Salvando os pontos
			Md2 = Monitor_obj.D;
			Mu2 = Monitor_obj.U;
			
			Event++;
			audio_stop_all();
			Los = 2;
		}
	}
	// Tirando com 90
	if (Mode == 2 && Event == 2)
	{
		if (Monitor_obj.D == 9 && !instance_exists(T_obj))
		{
			instance_create_layer(0,0,"Instances_UP", T_obj);
			T_obj.De = RoomP01_03;
			T_obj.co = c_white;
			Hand = true;
			// Salvando os pontos
			Md2 = Monitor_obj.D;
			Mu2 = Monitor_obj.U;
			
			Event++;
			audio_stop_all();
			Los = 2;
		}
	}
	// Permissões
	if (global.debugB)
	{
		if (keyboard_check_pressed(vk_f1))
		{
			instance_create_layer(96, 128,"Instances_UP", Caixa_obj);
		}
		if (keyboard_check_pressed(vk_f2))
		{
			instance_create_layer(832, 128,"Instances_UP", Caixa_obj);
		}
	}
	// Fundo
	if (instance_exists(DBground_obj))
	{
		if (DBground_obj.itime <= 0 && !instance_exists(BBS_obj)) instance_create_layer(0,0,"Instances", BBS_obj) ;	
	}
	// Variações de "Chefe"
	
	// "Tempo"
	if (Boss && room == Game01 && instance_exists(BBS_obj) && Pause == false)
	{
		Lb += .05;	
	}
	// Finalização
	if (Lb >= 100)
	{
		// Destruindo as caixas
		if (instance_exists(Caixa_obj)) Caixa_obj.Grv = true;
		// Configurando progresso
		if (Td < 5) 
		{
			Tb = 0;
			Td++;
		}
		Lb = 0;
	}
}
// Saindo do estado "chefe"
if (room == Menu_01)
{
	if (Boss == true) Boss = false;
	if (Lb > 0) Lb = 0;
}
// Aumentando o chefe em tempo
if (room == Game01 && Boss && Pause == false)
{
	Tb += Td;
}
else
{
	Tb = 0;
}
// Manipulando o evento de janela

if (window && windowa < 1 && Inv == false) windowa += .05;
if (window == false && windowa > 0) windowa -= 0.05;

// Controlando a var de animação

Fb += .2;

if (Fb >= 2) Fb = 0;

// Ligando e desligando inventário base

DrawInv_scr();

// Ativando item place holder

if (global.debugB){
	if (keyboard_check_pressed(ord("Q")) && !Inv) slot01++;
	if (keyboard_check_pressed(ord("E")) && !Inv) slot01--;
}

// Controlando indicador no inventário

if (((Xinv/100) + 1.9) > 0)
{
	if (keyboard_check_pressed(ord("S"))) 
	{
		YInd += 128;	
		Into = false; // Indicador
	}
	if (keyboard_check_pressed(ord("W"))) 
	{
		YInd -= 128;
		Into = false; // Indicador
	}
	
	if (YInd >= 384) YInd = 384;
	if (YInd <= 128) YInd = 128;
}
else
{
	YInd = 128;	
}

// "In nada"

if (room == Nada)
{
	// Spawn system
	Nt++;
	
	if (Nt >= room_speed*.1)
	{
		instance_create_layer(Xp, yp, "Instances", Blackb_obj);
		Xp = irandom_range(20, 940); 
		yp = irandom_range(20, 460);
		Nt = 0;	
	}
	
	// Criando cursor
	
	if (!instance_exists(ColliderV_obj)) instance_create_layer(0,0,"Instances", ColliderV_obj);
	
	// Outro
	
	if (BBr <= 0) BBr = 0;
	
}

// Spawn de caixa no energy 5

if (room == Energy_05)
{
	if (!instance_exists(Pb_obj)) 
	{
		if (Ton == 1)instance_create_layer(576, 64, "Instances", Pb_obj);
		if (Ton == 2)instance_create_layer(672, 384, "Instances", Pb_obj);	
	}
}

// Reação dos power ups

if (room == Stelf_tubo_04 && plus > 0 && plus02 > 0)
{
	if (!instance_exists(Pq_obj)) instance_create_layer(832, 0, "Instances", Pq_obj);
	plus = -1;
}

// Spanwnando PQ
if (room == Energy_05)
{
	if (!instance_exists(Pq_obj) && plus = -1)
	{
		if (C == false) instance_create_layer(576, -(room_height - blus), "Instances",Pq_obj);
		else
		{
			instance_create_layer(576, room_height - 128, "Instances",Pq_obj);
		}
	}
}
// Dando powerUp

if (C01 && C02 && C03 && Bobox01 == false)
{
	Bobox01 = true;
	window = true;
}

// Energy powerUp

if (Inv && YInd == 256 && (room == Energy_05 || room == EnergyX_06) && slotX > 0)
{
	window = true;
	Eney01 = true;
	slotX = 2
}

// PowerUp de bot

if (room == Energy_05 && Player_obj.x > Hbx - 30 && Player_obj.x < Hbx + 30 && Hbx != 0 && Hby != 0)
{
	if (keyboard_check_pressed(ord("W")) && Jumb01 == false)
	{
		Jumb01 = true;
		window = true;
	}
}