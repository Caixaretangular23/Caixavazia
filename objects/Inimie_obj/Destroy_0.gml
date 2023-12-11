// Definindo posições de Bot e tremendo

instance_create_layer(x,y,"Instances", shake_obj)

if (instance_exists(Controll_obj))
{
	Controll_obj.Hbx = x;
	Controll_obj.Hby = y;
}