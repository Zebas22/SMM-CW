
	var str, s;
	str = argument0
	if (str == "")
	    return str;
	s = string_char_at(str, 5)
	if (s != "-" && s != "")
	    str = string_insert("-", str, 5)
	s = string_char_at(str, 10)
	if (s != "-" && s != "")
	    str = string_insert("-", str, 10)
	return str;
