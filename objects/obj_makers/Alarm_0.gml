var _str, discordid;
if (type_consulta != 3 && global.map_consult != -4)
    alarm[3] = 5
else
{
	discordid = hash_encode(global.my2)
	switch type_consulta
    {
        case 0:
            _str = ("token=" + global.token +"&discord_id="+discordid+"&auth_code="+global.my5+"&page="+ string(page) + "&type=star")
			url = http_post_string(global.api_url + "/user/star", _str)
            break
        case 1:
            _str = ("token=" + global.token + "&discord_id=" + discordid + "&auth_code=" + global.my5 + "&page=" + string(page))
            url = http_post_string((global.api_url + "/user/search_follown"), _str)
            break
		case 2:
            _str = ("token=" + global.token + "&discord_id=" + discordid + "&auth_code=" + global.my5 + "&page=" + string(page) + "&type=uploads")
            url = http_post_string((global.api_url + "/user/star"), _str)
            break
		case 4:
            _str = ("token=" + global.token + "&discord_id=" + discordid + "&auth_code=" + global.my5 + "&page=" + string(page))
            url = http_post_string((global.api_url + "/user/myuser"), _str)
            break
    }

    if (type_consulta != 3)
        alarm[2] = 600
}