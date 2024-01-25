
	var file;
	file = file_text_open_read(argument0)
	global.init_DSM = real(base64_decode(file_text_read_string(file)))
	file_text_readln(file)
	global.lives22 = real(base64_decode(file_text_read_string(file)))
	file_text_readln(file)
	global.completed_levels = real(base64_decode(file_text_read_string(file)))
	file_text_readln(file)
	global.DSM_2 = real(base64_decode(file_text_read_string(file)))
	file_text_readln(file)
	file_text_close(file)
