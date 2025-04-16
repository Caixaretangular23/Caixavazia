// Indicações
Tipo = 0; // 1 é negativo e 2 positivo
Timpo = 0; // O medidor de tempo
Talpa = 1; // A alpha da seta
Tay = y;
Tbro = "Indefinido"; // O lado
// "Setando"
if (instance_exists(Controll_obj))
{
	// Modo arcade
	 if (Controll_obj.Mode == 0)
	 {
		U = Controll_obj.Mu;
		D = Controll_obj.Md;
	 }
	 // Modo loop
	 if (Controll_obj.Mode == 1)
	 {
		U = 0;
		D = 0;
	 }
	 // Modo normal
	 if (Controll_obj.Mode == 2)
	 {
		U = Controll_obj.Mu2;
		D = Controll_obj.Md2;
	 }
}

Ae = 0; // Frames das estantes