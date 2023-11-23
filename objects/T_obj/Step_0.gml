// *Transição*
if (Aes >= 1 && Moda == 1)
{
	if (De != noone) room_goto(De);
	Moda = 0;	
}
// Destruindo-se
if (room == De && Aes <= 0) instance_destroy();
// [Limites]
// Se tiver que aumentar, mas alpha < 1
if (Moda == 1 && Aes < 1)
{
	Aes += Aup;	
}
// Se tiver que diminuir mas alpha > 0
if (Moda == 0 && Aes > 0)
{
	Aes -= Ado;	
}

// Sai janela