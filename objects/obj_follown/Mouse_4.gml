if (press == 1 && disable == "false" && disabled == 0 && loading == 0 && image_index == 0 && time == 0  && global.my1 != obj_panel_makers.alias && (!instance_exists(obj_nm_card_expand2)))
{
	audio_play_sound(snd_like, 0, false)
    loading = 1
	var _str = ("token=" + global.token + "&discord_id=" + hash_encode(global.my2) + "&auth_code=" + global.my5 + "&alias="+ hash_encode(obj_panel_makers.alias))
    url = http_post_string(global.api_url + "/user/follown", _str)
    alarm[2] = 600
}else
if(press == 1 && disable != "false" && disabled == 1 && loading == 0 && image_index == 1 && time == 0  && global.my1 != obj_panel_makers.alias && (!instance_exists(obj_nm_card_expand2)))
 {
	audio_play_sound(snd_dislike, 0, false)
    loading = 1
	var _str = ("token=" + global.token + "&discord_id=" + hash_encode(global.my2) + "&auth_code=" + global.my5 + "&alias="+ hash_encode(obj_panel_makers.alias))
    url = http_post_string(global.api_url + "/user/no_follown", _str)
    alarm[2] = 600
 }
 else
   audio_play_sound(snd_wrong, 0, false)