if (press == 1 && disabled == 0 && loading == 0 && image_index == 0 && time == 0 && obj_nm_like_heart.loading == 0 && obj_nm_like_heart.image_index == 0 && obj_nm_like_heart.time == 0 && (!instance_exists(obj_settings_panel)))
{
    audio_play_sound(snd_dislike, 0, false)
    loading = 1
    scale = 0.8
    _str = ((((("token=" + global.token) + "&discord_id=") + global.my2) + "&auth_code=") + global.my5)
    url = http_post_string((((global.api_url + "stage/") + global.level_id) + "/stats/dislikes"), _str)
    alarm[2] = 600
}


