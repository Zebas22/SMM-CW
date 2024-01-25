var _str;
_str = ("token=" + global.token + "&discord_id=" + hash_encode(global.my2) + "&auth_code=" + global.my5 + "&type=" + string(obj_DSM_control.difficulty))
url = http_post_string((global.api_url + "/DSM/create"), _str)