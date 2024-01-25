if(obj_DSM_control.active == 1 && loading == 0){
with (obj_DSM_tabs)
{
	image_index = 0
    c_button = make_colour_rgb(102, 18, 18)
}
with (obj_DSM_button)
	image_index = other.value
with (obj_DSM_button_conti)
	image_index = other.value
image_index = 1
c_button = c_white
obj_DSM_control.active = 0
obj_DSM_control.difficulty = value
global.DSM_dificultad = value
audio_stop_sound(obj_DSM_control.dsm_music)
loading = 1
alarm[0] = 70
}else
    audio_play_sound(snd_wrong, 0, false)