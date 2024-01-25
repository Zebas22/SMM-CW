if (!instance_exists(obj_button_home) and obj_DSM_mario.hspeed == 0){
	audio_play_sound(snd_aceptar, 0, false)
	url = http_get(archivo)
	global.dsm = 1
}