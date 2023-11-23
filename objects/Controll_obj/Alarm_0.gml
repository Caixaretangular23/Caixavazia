// Evento de travamento

if (Pause)
{
	if (!Controll_obj.Beat)
	{
		audio_resume_sound(BoxTheme);
		Pause = false;
	}
}
else
{
	audio_pause_sound(BoxTheme);
	Pause = true;	
}


