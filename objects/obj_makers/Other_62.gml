var resultado, map, i, leveldata, card;
if (ds_map_find_value(async_load, "id") == url && (!instance_exists(obj_id_input)) && (!instance_exists(obj_nm_input_text)))
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
        if (!(ds_map_exists(map, "message")))
        {
            num_rows = real(ds_map_find_value(map, "num_rows"))
            rows_perpage = real(ds_map_find_value(map, "rows_perpage"))
            pages = real(ds_map_find_value(map, "pages"))
            levels = ds_map_find_value(map, "result")
            global.map_consult = resultado
            global.type_consult = type_consulta
            with (obj_nm_card_makers)
                instance_destroy()
            for (var i = 0; i < ds_list_size(levels); i++)
            {
                leveldata = ds_list_find_value(levels, i)
                card = instance_create_depth(192, (56 + (39 * i)), 0, obj_nm_card_makers)
                card.alias = decrypt_bl(ds_map_find_value(leveldata, "alias"))
				card.id_discord = decrypt_bl(ds_map_find_value(leveldata, "id"))
                card.uploads = ds_map_find_value(leveldata, "uploads")
                card.booster = ds_map_find_value(leveldata, "booster")
				card.star = ds_map_find_value(leveldata, "star")
				card.admin = ds_map_find_value(leveldata, "admin")
				card._id = decrypt_bl(ds_map_find_value(leveldata, "uid"))
				card.num = real(i+1)
            }
            loading = 0
            obj_makers.active = 1
            with (obj_nm_button_retry_maker)
                instance_destroy()
            mensaje = ""
            codigo = ""
            alarm[2] = -1
        }
        else if ds_map_exists(map, "message")
        {
            mensaje = ds_map_find_value(map, "message")
            codigo = ds_map_find_value(map, "error_type")
            loading = 0
            alarm[2] = -1
            with (obj_nm_button_retry_maker)
                instance_destroy()
            instance_create_depth((camera_get_view_x(view_get_camera(0)) + 168), (camera_get_view_y(view_get_camera(0)) + 126), -2, obj_nm_button_retry_maker)
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
        instance_create_depth((camera_get_view_x(view_get_camera(0)) + 168), (camera_get_view_y(view_get_camera(0)) + 126), -2, obj_nm_button_retry_maker)
    }
}

