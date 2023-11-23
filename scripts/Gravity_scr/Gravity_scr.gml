// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// A var "S" e onfloor é obrigatório
function Gravity_scr(){
	
	y += S;	
	// Definições de "Onfloor"
	if (place_meeting(x,y,Chao_obj))
	{
	
		onfloor = true;
	}
	else
	{
		onfloor = false;
	}
	
	// Efeitos ao chão
	if (onfloor && S != 0)
	{
		// Apertando os compatíveis
		S = 0;
	}
	if (!onfloor) S += 0.5;
}