var resultado, map, i, leveldata, card, record, timer, seconds, minutes, milliseconds, user_data, etiq;
if (ds_map_find_value(async_load, "id") == url)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        if (map == -1)
        {
            show_debug_message("Resultado invalido")
            exit
        }
        if (!(ds_map_exists(map, "message")) && !(ds_map_exists(map, "message2")))
        {
            num_rows = real(ds_map_find_value(map, "num_rows"))
            rows_perpage = real(ds_map_find_value(map, "rows_perpage"))
            pages = real(ds_map_find_value(map, "pages"))
            levels = ds_map_find_value(map, "result")
            global.map_consult = resultado
            global.type_consult = type_consulta
            with (obj_nm_card_2)
                instance_destroy()
			with (obj_follown)
                instance_destroy()
            for (var i = 0; i < ds_list_size(levels); i++)
            {
                leveldata = ds_list_find_value(levels, i)
                card = instance_create_depth(185, (59 + (54 * i)),-11, obj_nm_card_2)
                card.name = ds_map_find_value(leveldata, "name")
                card.likes = ds_map_find_value(leveldata, "likes")
                card.downloads = ds_map_find_value(leveldata, "downloads")
                card.dislikes = ds_map_find_value(leveldata, "dislikes")
                card.intentos = ds_map_find_value(leveldata, "intentos")
                card.victorias = real(ds_map_find_value(leveldata, "victorias"))
                card.muertes = real(ds_map_find_value(leveldata, "muertes"))
                card.apariencia = ds_map_find_value(leveldata, "apariencia")
				card.entorno = ds_map_find_value(leveldata, "entorno")
                card.date = ds_map_find_value(leveldata, "date")
                card.author = decrypt_bl(ds_map_find_value(leveldata, "author"))
                card.archivo = decrypt_bl(ds_map_find_value(leveldata, "archivo"))
                card._id = decrypt_bl(ds_map_find_value(leveldata, "id"))
                card.featured = ds_map_find_value(leveldata, "featured")
                card.date = ds_map_find_value(leveldata, "date")
                var record = ds_map_find_value(leveldata, "record")
                if (ds_map_find_value(record, "record") == "yes")
                {
                    card.record_name = decrypt_bl(ds_map_find_value(record, "alias"))
                    card.nrecord = real(ds_map_find_value(record, "time"))
                    timer = real(ds_map_find_value(record, "time"))
                    seconds = floor((timer / 1000))
                    minutes = floor((seconds / 60))
                    milliseconds = (timer - (seconds * 1000))
                    seconds = (seconds % 60)
                    card.record = ((((string_add_zeros(minutes, 2) + ":") + string_add_zeros(seconds, 2)) + ":") + string_add_zeros(milliseconds, 3))
                }
                if (card.victorias == 0 && card.muertes == 0)
                    card.porcentaje = 0
                else if (card.victorias == 0 && card.muertes != 0)
                    card.porcentaje = 0
                else if (card.muertes == 0 && card.victorias != 0)
                    card.porcentaje = 100
                else
                {
                    card.porcentaje = ((card.victorias / card.muertes) * 100)
                    if (card.porcentaje > 100)
                        card.porcentaje = 99
                }
                user_data = ds_map_find_value(leveldata, "user_data")
                card.completed = ds_map_find_value(user_data, "completed")
                card.liked = real(ds_map_find_value(user_data, "liked"))
                etiq = ds_map_find_value(leveldata, "etiquetas")
                card.etiquetas = string_split(",", etiq, 0)
            }
			with(instance_create_depth(x + 300, y + 2, -13, obj_follown)){
				disable = ds_map_find_value(map, "follow")
			}
            load = 0
            obj_makers.active = 1
            with (obj_nm_button_retry_maker)
                instance_destroy()
            mensaje = ""
            codigo = ""
            alarm[2] = -1
        }
        else if ds_map_exists(map, "message")
        {
            men = ds_map_find_value(map, "message")
            load = 0
            alarm[2] = -1
			with(instance_create(x + 300, y + 2, obj_follown)){
				disable = ds_map_find_value(map, "follow")
			}
            with (obj_nm_button_retry_maker)
                instance_destroy()
        }
		else if ds_map_exists(map, "message2")
        {
            men = ds_map_find_value(map, "message2")
            load = 0
            alarm[2] = -1
			with(instance_create(x + 300, y + 2, obj_follown)){
				disable = ds_map_find_value(map, "follow")
			}
            with (obj_nm_button_retry_maker)
                instance_destroy()
        }
        ds_map_destroy(map)
    }
    else if (rows_perpage == 0)
    {
        mensaje = "Ocurrio un error"
        codigo = "002"
        loading = 0
        alarm[2] = -1
        with (obj_nm_button_retry_maker)
            instance_destroy()
    }
}

