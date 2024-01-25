var _str;
	var id_disc = hash_encode(global.my2)
	var auth = hash_encode(alias)
	
    switch type_consulta
    {
        case 0:
            _str = ((((((("token=" + global.token) + "&discord_id=") + id_disc) + "&auth_code=") + global.my5) + "&author=") + auth)
            url = http_post_string((global.api_url + "/stages/search_author"), _str)
            break
    }

    if (type_consulta != 3)
        alarm[2] = 600