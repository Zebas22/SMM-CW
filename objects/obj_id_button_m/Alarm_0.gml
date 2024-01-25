var userid = hash_encode(obj_id_input_m.new_texto)
var discordid = hash_encode(global.my2)
var _str = ("token=" + global.token + "&discord_id=" + discordid + "&auth_code=" + global.my5 + "&id=" + userid)
url = http_post_string(global.api_url + "/user/detailed_search_id", _str)


