var str1 = base64_decode(argument0)
str1 = hash_decode(scr_parse(str1, 1), scr_parse(str1, 0))
return str1;