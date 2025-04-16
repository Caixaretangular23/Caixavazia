// Valor de alpha
if (instance_exists(Controll_obj))
{
	image_alpha = Controll_obj.At; // Equiparando alpha a var
}
else
{
	image_alpha = 1;
}

// Movimentos horizontais
if (Movementx == 0) hspeed = -5;
if (Movementx == 1) hspeed = 5;
// Movimentos verticais
if (Movementy == 0) vspeed = -5;
if (Movementy == 1) vspeed = 5;

// Destruindo-se aos limites
if (x < -64 || x  > 960 + 64 || y < -64 || y > 480 + 64)
{
	instance_destroy();	
	
	// Limpando
	if (instance_exists(Controll_obj)) Controll_obj.BBr--;
}

// Tamanho dinâmico

image_yscale = image_xscale;
image_xscale += .05;	

// Mova-se

if (image_xscale >= .3 && Movementx == noone && Movementy == noone)
{
	// Razão de altura
	if (y < room_height/2)  Movementy = 0;
	if (y > room_height/2) Movementy = 1;
	// Rezão de largura
	if (x < room_width/2) Movementx = 0;
	if (x > room_width/2) Movementx = 1;
	//Meio termo
	if (x == room_width/2 && y == room_height/2)
	{
		Movementx = irandom(1);// Velocidade H
		Movementy = irandom(1);// velocidade V	
	}
}
//Finalizando tuto

if (place_meeting(x,y,ColliderV_obj) && mouse_check_button_pressed(mb_left))
{
	if (!instance_exists(T_obj) && image_alpha >= .5 && sprite_index == BBoxesT_spr)
	{
		instance_create_layer(0,0,"Instances_UP", T_obj);
		T_obj.De = Energy_05;
		T_obj.Ado = .001
		Controll_obj.Los = 3;
		Controll_obj.Not = true;
		Controll_obj.Li = true;
	}
}
