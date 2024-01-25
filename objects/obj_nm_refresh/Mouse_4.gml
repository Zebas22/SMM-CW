if obj_nivelesmundiales.active = 1{
if visible = 1 {
audio_play_sound(snd_select_tile, 0, false)
global.map_consult = -4
global.type_consult = -4
with (obj_nivelesmundiales){
	event_user(0)
	loading = 1
	obj_nivelesmundiales.active = 0
	alarm[0] = 5
}
}
}