// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawInv_scr(){
	
	// É obrigatório as vars: Inv = false e Xinv = -210
	
	if (Inv) Xinv += 20;
	else
	{
		Xinv -= 20;	
	}
	if (Xinv >= -90) Xinv = -90;
	if (Xinv <= -210) Xinv = -210;


	if (keyboard_check_pressed(ord("I")) && Inv == false && Xinv == -210)
	{ 
		Inv = true;
		Controll_obj.Into = false;
		show_debug_message("+Inv");
	}
	if (keyboard_check_pressed(ord("I")) && Inv == true && Xinv >= -90)
	{
		Inv = false;
		show_debug_message("-Inv");
	}
}