	var str, s;
	str = argument0
	if (str == "")
	    return str;
	s = string_char_at(str, 4)
	if (s != "-" && s != "")
	    str = string_insert("-", str, 4)
	s = string_char_at(str, 8)
	if (s != "-" && s != "")
	    str = string_insert("-", str, 8)
	return str;