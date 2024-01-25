
if (global.cooldown = 0 and canpress == 1 && image_index == 0 and obj_nm_card_expand.author != global.my1)
{
    global.cooldown = 1; // Establece la variable en true
	global.minutos = 300;
	alarm[0] = room_speed * 300; // Establece el tiempo de cooldown en 5 global.minutos
	with obj_nivelesmundiales
		alarm[5] = 60
   audio_play_sound(snd_aceptar, 0, false);
   image_index = 1;
   event_user(0);
}
else if reported = 0 and obj_nm_card_expand.author != global.my1{
   audio_play_sound(snd_wrong, 0, false);
scr_toast(1,"You have to wait " + string_hash_to_newline(global.minutos)  + "s to report the level");
}
else if (obj_nm_card_expand.author == global.my1){
	audio_play_sound(snd_wrong, 0, false);
	scr_toast(1,cantrep[1])
}
else{
	audio_play_sound(snd_wrong, 0, false);
	scr_toast(1,yarep[1]);
}