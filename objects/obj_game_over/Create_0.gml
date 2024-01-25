audio_play_sound(snd_gameover, 0, false)
if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1)
{
    with (obj_persistent)
    {
        event_user(4)
        event_user(5)
    }
}
var _str = ("token=" + global.token + "&discord_id=" + hash_encode(global.my2) + "&auth_code=" + global.my5 + "&type=" + string(global.DSM_dificultad))
url = http_post_string((global.api_url + "/DSM/gameover"), _str)
image_speed = 0.6
alarm[0] = 360