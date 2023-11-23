
// Numerais

// "Setando"
if (instance_exists(Controll_obj))
{
	// Modo arcade
	 if (Controll_obj.Mode == 0)
	 {
		U = Controll_obj.Mu;
		D = Controll_obj.Md;
	 }
	 // Modo normal
	 if (Controll_obj.Mode == 2)
	 {
		U = Controll_obj.Mu2;
		D = Controll_obj.Md2;
	 }
}

Ae = 0; // Frames das estantes