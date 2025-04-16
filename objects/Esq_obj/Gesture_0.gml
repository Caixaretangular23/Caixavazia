// No menu
if (room == Menu_01)
{
	if (instance_exists(Se_obj))
	{
		
		with(Se_obj)
		{
			Option--;
		}
	}
	else
	{
		instance_destroy();
	}
}

//Andando...

if (room == Game01)
{
	if (instance_exists(Player02_obj))
	{
		Player02_obj.Esq = true;
		Player02_obj.Dir = false;
	}
}