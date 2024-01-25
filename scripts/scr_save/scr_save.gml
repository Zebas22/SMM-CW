
	var file;
	file = file_text_open_write(argument0)
	file_text_write_string(file, base64_encode(string(global.init_DSM)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.lives22)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.completed_levels)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.DSM_2)))
	file_text_writeln(file)
	file_text_close(file)
