var uss, pps, _str;
uss = obj_lun_reg.new_texto
pps = sha1_string_utf8(obj_lp_reg.new_texto)
_str = ("token=" + global.token +"&alias="+uss+"&password="+pps)
url2 = http_post_string(global.api_url + "/user/sign_2", _str)