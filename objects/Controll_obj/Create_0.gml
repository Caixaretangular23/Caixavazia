Phone = true; // Tá rodando no celular?
// Criando o sistema de toque
if (Phone && !instance_exists(Touch_obj)) instance_create_layer(0,0,"Instances", Touch_obj);
// Menu
Arcad = true;
// Vídeo
video = 0;
Fim = false;
// Lmebrando que existe
show_debug_message("Controle01");

// Início [Executável]
Pause = false; // Pausando o jogo
boottime = 0;
// Início [GameP]
BB = true;
// Inimigo
Hand = false;
Hbx = noone; // X do bot
Hby = noone; // Y do bot
Event = 0; // Os pontos já passados de saida do jogo
// Save

	// -Arcade-
Mu = 9; // Unidade salva
Md = 9; // Dezena salva

	// -Normal-
Mu2 = 0; // Unidade salva
Md2 = 0; // Dezena salva

// Dificuldade adaptável

Pextra = 0; // uma medida de facilitada ou dificultada

// Indicadores

Fr = 0; // Frame do indicador
Frt = 0; // Tempo do indicador
Fre = true; // Precisa do controle de frames?

// Janela

winspr = PaperH1_spr;
window = false;
windowa = 0;
winmage = 0;
// Debug

global.debugB = false;

// Inputs

global.action = keyboard_check_pressed(ord("W"));

//Posição

Los = 0;

// Inventário

Inv = false; // Presença do inventário
Xinv = -210; // Posição inicial do inventário
YInd = 128; // Y do indicador não incluído no script
Xbag = 0; // X do indicador na bolsa
XMbag = 0; // Máximo da bolsa = 512

slot01 = 0; // Possui o item desse slot (Token)?
slot02 = 0; // Chave de energia
slot03 = 0;
slotX = 0; // Lanterna
// Pano

Toto = true;// Quer o guia?

// Token no chão

Ton = 0;

// Extras

vai = keyboard_check_pressed(ord("W")); // tecla de ação

// Power up (Que se tem)

PeAchao01 = false; // Velocidade
Eney01 = false; // Energia
Bobox01 = false; // Pontos extras
Jumb01 = false; // Pulo
PeAchao0 = false; // Velocidade extrema

// Power up (selecionado)

PeAchao = false; // Velocidade
Eney = false; // Energy
Bobox = false; // Pontos extras
Jumb = false; // Pulo
PeAchao02 = false; // Velocidade extrema

// OBJ anim

Fb = 0;

// Game01 [HUD]

Sf = 0; // Barra da esquerda
Sf02 = 0; // Barra da direita

// Nada
Not = false; // terminou o nada?

// Game01

di = 0;
Gm = false;
Ar = false; // Passou do arcade?
Beat = false; // Perdeu no Arcade?
Mode = 0; // Modo de jogo (0 Arcade, 1 LOOP e 2 Normal)
mouse = true; // O mouse funciona?

// Evento [Game01]

Boss = false; // Evento...
Tb = 0; // Pontuação do evento
Tf = 0; // Pontuação máxima
Td = 0; // Dificuldade do evento
Lb = 0; // Progresso do evento

// Tutorial [O que jogador sabe?]

MovT = true; // Sabe se mover? (Prólogo)
MovT02 = true; // Sabe se mover? (Game01)
AcTo = true; // Sabe a tecla de ação(ENTER)?
Actp02 = true; // E a segunda ação?
Into = true; // Inventário indicado?
Ow = false; //Sabe sair?
Espt = 0; // Tempo de indicador

Bol = false; // Olha tem uma bolsa aqui!! ou powerup...

// [Power ups vars]

plus = 0; // energia progresso
plus02 = 0;
blus = 0; // Gravidade dinâmica
C = false;
// Passou para a outra room
quest01 = false; // Tarefa dos cartazes
C01 = false; // Cartaz da room
C02 = false; // Cartaz da Energy
C03 = false; // Cartaz da Energy X

// [Stelf]

Qp = 290; // Posição vertical do cubo
Li = false; // As luzes estão ligadas?

Sm = 1; // O lado que estar sendo empurrado
Ls = 0; // A alpha da sombra

// Nada

BBr = 0; // Existe uma caixa quebrada?
Nt = 0; // Tempo de spawn em nada
Xp = irandom_range(20, 940); // Valor de x para o spawn de caixa aleatória
yp = irandom_range(20, 460); // Valor y para o spawn de caixa aleatória
At = 0; // Alpha das caixa

// Alphas de draws

Alpa = 0; // Cabeça de caixa
Powera = 0; // Fundo para o último power up
Spow = Everde_spr; // Sprite do fundo

// Manejos dos sons de ambiente

Stelfound = false;
Tenebrose = false;
