// Definindo posições de Bot e tremendo

instance_create_layer(x,y,"Instances", shake_obj)
audio_play_sound(Derr, 1, false);

if (instance_exists(Controll_obj))
{
	Controll_obj.Hbx = x;
	Controll_obj.Hby = y;
}

if (Controll_obj.Event == 3) Controll_obj.Event++;
Controll_obj.Hand = false;