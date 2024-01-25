var uss, pps, _str;
uss = hash_encode(obj_lun.new_texto)
pps = hash_encode(sha1_string_utf8(obj_lp.new_texto))
_str = ("token=" + global.token +"&alias="+uss+"&password="+pps)
url = http_post_string(global.api_url + "/user/login", _str)