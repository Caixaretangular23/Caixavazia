// Criando caso não haja controle

if (!instance_exists(Controll_obj)) instance_create_layer(0,0,"Instances", Controll_obj);

// Tirando a janela

if (Controll_obj.window) Controll_obj.window = false;
