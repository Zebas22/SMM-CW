if (press == 1 && disabled == 0 && loading == 0 && image_index == 0 && time == 0 && (!instance_exists(obj_settings_panel)))
{
    audio_play_sound(snd_like, 0, false)
    loading = 1
    scale = 0.8
	_str = ("token=" + global.token + "&discord_id=" + hash_encode(global.my2) + "&auth_code=" + global.my5 + "&id=" + hash_encode(global.level_id) + "&stats="+hash_encode("likes"))
    url = http_post_string(global.api_url + "/stages/stats", _str)
    alarm[2] = 600
}


