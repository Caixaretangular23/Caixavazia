// Criando controle
if (!instance_exists(Controll_obj)) instance_create_layer(0,0,"Instances", Controll_obj);
// Criando o "Destacador"
if (instance_exists(ColliderV_obj))
{
	instance_create_layer(x,y,"Instances", ColliderV_obj);	
}

limitx = 384; // o máximo moldável deste player
limitxi = 192; // Mínimo moldável deste player
SP = 2; // Velocidade deste player

// Padronizando animações

Idol = PlayerES_spr;
Rune = PlayerES2_spr;