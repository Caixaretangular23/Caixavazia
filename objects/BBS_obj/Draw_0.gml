Ct++;

// Criando ao cooldown

if (Ct >= room_speed*Cmi && !Controll_obj.Pause)
{
	// Redefinindo Cmi
	if (Cmi != 2) audio_play_sound(BoxTheme, .1, true);
	Cmi = 2;
	// C.
	if (sid == 0) instance_create_layer(96, 128,"Instances_UP", Caixa_obj);
	if (sid == 1)instance_create_layer(832, 128,"Instances_UP", Caixa_obj);
	// Aleatoriando  o sid
	sid = irandom_range(0,1);
	// Resetando o tempo
	Ct = 0;
}

// Finalização

if (Controll_obj.Boss == false && Controll_obj.Ar == true && Monitor_obj.D > 9)
{
	// Derrubando as caixas
	if (instance_exists(Caixa_obj)) Caixa_obj.Grv = true;
	
	// Desativando spawn
	instance_destroy();	
}