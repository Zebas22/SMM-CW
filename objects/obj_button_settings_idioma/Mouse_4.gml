audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if (global.idioma = 0)
	global.idioma = 1
else if (global.idioma = 1)
	global.idioma = 2
else 
	global.idioma = 0


