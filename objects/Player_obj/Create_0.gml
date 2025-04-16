// Frescura de janela :(
Tj = 0;
// Velocidade do player

Vel01 = 0; // Resultado
Vel02 = .05; // Variação
Maxv = 5;
// Gravidade e colisão
S = 0;	// Var de gravidade
onfloor = false // estar no chão?
blockS = Escada_obj;

// Animação de corrida

runa = Player_andando_spr;

// Criando o colisor

if (instance_exists(Escada_obj)) instance_create_layer(x,y,"Instances", ColliderV_obj);

// Garantindo por si o Controll_obj

if (!instance_exists(Controll_obj)) instance_create_layer(0,0,"Instances", Controll_obj);

// Vars de deformação

aperta = false;
solta = false;

xs = .35;

// Propriedades de fundo

Frame = 0;

// Sons indepedente

if (room == EnergyX_06) audio_play_sound(Clock,1,false);
else
{
	audio_stop_sound(Clock);	
}