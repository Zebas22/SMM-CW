if (dont == 0)
{
    if (ds_map_find_value(async_load, "id") == url)
    {
        if (ds_map_find_value(async_load, "status") == 0)
        {
            var resultado = ds_map_find_value(async_load, "result")
            if (resultado == -1)
            {
                show_debug_message("Resultado invalido")
                exit
            }
            if (string_pos("Error", resultado) || string_pos("Code", resultado) || string_pos("Message", resultado))
            {
                time = 5
                alarm[4] = 60
            }
            else
            {	global.nm_play = resultado
				global.makers = 0
                global.level_id = _id
                global.level_name = name
                global.author = author
			}
				dont = 1
                room_goto(rm_guardabot_play)
        }
        else if (global.nm_play == 0)
        {
            time = 5
            alarm[4] = 60
        }
    }
}