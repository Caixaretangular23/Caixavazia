// Adicionando script
Vei_scr();
// Pause event
if (Controll_obj.Pause)
{
	image_speed = 0;
	Tge = false;
}
else {image_speed = 1};


if (instance_exists(Controll_obj))
{
	if (place_meeting(x,y,Player02_obj))
	{
		// Usando A.(...)
		if ((keyboard_check_pressed(ord("W")) && !Controll_obj.mouse) || (keyboard_check(vk_rcontrol) && Controll_obj.mouse))
		{
			if (Tge == false && Bti >= room_speed*0.5 && Controll_obj.Pause == false)
			{
				Tge = true;
				Bti = 0;
				Ro = 1;
				audio_play_sound(Gma, .005, false);
			
				// Manipulando velocidade e posição
				Player02_obj.x = x;
				Player02_obj.vel = 0;
				// Definindo posição inicial de mira
				if (Player02_obj.x <= room_width/2) Tx = 224;
				if (Player02_obj.x >= room_width/2) Tx = 724;
				Tx02 = Tx // Equalizando as  duas variáveis
			}
			// Soltando A.(...)
			if (Tge == true && Bti >= room_speed*0.5)
			{
				Tge = false;
				Bti = 0;
				// Manipulando velocidade e posição
				Player02_obj.vel = 5;
			}
		}
	}
	// Start caixa...
	if (instance_exists(DBground_obj) && DBground_obj.itime >= 1 && !instance_exists(Caixa_obj) && Tge)
	{
		// Criando as caixas
		if(Tx > 224 && Tx < 724)
		{
			if (x < room_width/2)
			{
				instance_create_layer(96, 128,"Instances_UP", Caixa_obj);
				Caixa_obj.Bro = true;
			}
			if (x > room_width/2)
			{
				instance_create_layer(832, 128,"Instances_UP", Caixa_obj);
				Caixa_obj.Bro = true;
			}
		}
	}
	// Determinações de target
	if (!Controll_obj.mouse)
	{
		Ty = 128;
		
		if (keyboard_check_pressed(vk_right) && Tge) Tx += 64;
		if (keyboard_check_pressed(vk_left) && Tge) Tx -= 64;
		
		if (keyboard_check_pressed(vk_right) && place_meeting(x,y, Player02_obj) && Tge) Tx02 += 64;
		if (keyboard_check_pressed(vk_left) && place_meeting(x,y, Player02_obj) && Tge) Tx02 -= 64;
	}
	else
	{
		Tx02 = point_direction(x,y, mouse_x, mouse_y);
		Tx = mouse_x;
		Ty = mouse_y;
	}
	// Limitações superiores
	if (!Controll_obj.mouse)
	{
		if (Tx <= 224) Tx = 224;
		if (Tx >= 724) Tx = 724;
	}
	// Limitações inferiores
	if (Tge)
	{
		if (x > room_width/2 && Tx <= 532) Tx = 532
		if (x < room_width/2 && Tx >= 416) Tx = 416;
	}
	// Determinações de arma
	if (Tx02 <= 224) Tx02 = 224;
	if (Tx02 >= 724) Tx02 = 724;
	
	// Shot
	if (place_meeting(x,y,Player02_obj) && Tge)
	{
		// Laptop on
		if (keyboard_check_pressed(ord("R")) && !Controll_obj.mouse)
		{
			if (instance_exists(Comp_obj) && Comp_obj.Power >= 20)
			{
				instance_create_layer(x,y - 50,"Instances_UP", Bullet_obj);	
				Bullet_obj.direction = point_direction(x,y, Tx, 128);
				Bullet_obj.image_xscale = .2;
				Bullet_obj.image_yscale = .2;
				// Degradando a energia
				if (!Controll_obj.Jumb) Comp_obj.Power -= 5;
			}
		}
		
		// Laptop off
		if (mouse_check_button_pressed(mb_left) && Controll_obj.mouse)
		{
			if (instance_exists(Comp_obj) && Comp_obj.Power >= 20)
			{
				instance_create_layer(x,y - 50,"Instances_UP", Bullet_obj);	
				Bullet_obj.direction = point_direction(x,y, Tx, 128);
				Bullet_obj.image_xscale = .2;
				Bullet_obj.image_yscale = .2;
				// Degradando a energia
				if (!Controll_obj.Jumb) Comp_obj.Power -= 5;
			}
		}
	}
	
}

// Tempo de bloqueio

Bti++;

if (Bti >= room_speed*0.5) Bti = room_speed*.5;