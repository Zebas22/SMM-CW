var levelid = obj_id_input.new_texto
var _str = ("token=" + global.token + "&discord_id=" + hash_encode(global.my2) + "&auth_code=" + global.my5 + "&id=" + levelid)
url = http_post_string(global.api_url + "/stages/detailed_search_id", _str)


