audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if (disabled = 1)
{
if (global.effect_star == 1)
{
    global.effect_star = 0
	if global.idioma = 0
    text = "Desactivado"
	else if global.idioma = 1
    text = "Disabled"
	else if global.idioma = 2
    text = "Disattivato"
}
else
{
    global.effect_star = 1
	if global.idioma = 0
    text = "Activado"
	else if global.idioma = 1
    text = "Enabled"
	else if global.idioma = 2
    text = "Attivato"
}
}
