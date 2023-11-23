// Condição
Be = irandom_range(0, 100); // Quais as chances
Bro = false; // está quebrado?

// Moldando o tamanho

image_xscale = .3;
image_yscale = .3;

//Escolhendo na dificuldade 
if (instance_exists(Monitor_obj))
{
	// Chance menor que 40
	if (Monitor_obj.D < 2 && (Be > 60)) Bro = true;
	// Chance de quebra antes dos 70 mas depois do 40
	if (Monitor_obj.D < 7 && Monitor_obj.D >= 2 && (Be > 70 - ((Monitor_obj.D * 10)))) Bro = true;
	// Chance de quebra depois dos 70
	if (Monitor_obj.D >= 7 && (Be > 70 - ((Monitor_obj.D * 10) - 30))) Bro = true;
}
	// Garantindo...
	if (instance_exists(Controll_obj) && Controll_obj.Boss) Bro = true;

Grv = false; // foi atingido?

// propriedades de gravidade

S = 0;
onfloor = noone;