var resultado, map, leveldata, card, record, timer, seconds, minutes, milliseconds, user_data, etiq;
if (ds_map_find_value(async_load, "id") == url)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        if (map == -1)
        {
            with (obj_nivelesmundiales)
            {
                mensaje = "Error"
                codigo = "0"
                loading = 0
                obj_nivelesmundiales.active = 1
                alarm[2] = -1
            }
            with (obj_id_input)
                write = 1
            image_index = 0
            exit
        }
        if (!(ds_map_exists(map, "message")))
        {
            with (obj_id_input)
                instance_destroy()
            with (obj_nm_input_text)
                instance_destroy()
            with (obj_nm_style_game)
                instance_destroy()
            with (obj_nm_course_theme)
                instance_destroy()
            with (obj_nm_dificultad)
                instance_destroy()
            with (obj_nm_tiempo)
                instance_destroy()
            with (obj_nm_historial)
                instance_destroy()
            with (obj_nm_reaccion)
                instance_destroy()
            with (obj_nm_orden)
                instance_destroy()
            with (obj_nm_search_btn)
                instance_destroy()
            leveldata = ds_map_find_value(map, "result")
            card = instance_create(192, 56, obj_nm_card_expand)
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
                card.etiquetas = ds_map_find_value(leveldata, "etiquetas")
            with (card)
            {
                download = instance_create(235, 136, obj_nm_download)
                download.file = archivo
            }
            with (obj_nivelesmundiales)
            {
                loading = 0
                active = 1
                mensaje = ""
                codigo = ""
                alarm[2] = -1
            }
        }
        else if ds_map_exists(map, "message")
        {
            with (obj_nivelesmundiales)
            {
                mensaje = ds_map_find_value(map, "message")
                loading = 0
                obj_nivelesmundiales.active = 1
                alarm[2] = -1
            }
            with (obj_id_input)
                write = 1
            image_index = 0
        }
        ds_map_destroy(map)
    }
    else
    {
        with (obj_nivelesmundiales)
        {
            mensaje = "Error"
            loading = 0
            obj_nivelesmundiales.active = 1
            alarm[2] = -1
        }
        with (obj_id_input)
            write = 1
        image_index = 0
    }
}


