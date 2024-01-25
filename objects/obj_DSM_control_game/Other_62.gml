if (ds_map_find_value(async_load, "id") == url && (!instance_exists(obj_id_input)) && (!instance_exists(obj_nm_input_text)))
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        if (map == -1)
            show_debug_message("Resultado invalido")
        if (!(ds_map_exists(map, "message")))
        {
            num_rows = real(ds_map_find_value(map, "num_rows"))
            rows_perpage = real(ds_map_find_value(map, "rows_perpage"))
            pages = real(ds_map_find_value(map, "pages"))
            levels = ds_map_find_value(map, "result")
            global.map_consult = resultado
            global.type_consult = type_consulta
            with (obj_nm_card)
                instance_destroy()
            var leveldata = ds_list_find_value(levels, 0)
            var card = obj_DSM_level
            card.name = ds_map_find_value(leveldata, "name")
            card.archivo = decrypt_bl(ds_map_find_value(leveldata, "archivo"))
            card._id = decrypt_bl(ds_map_find_value(leveldata, "id"))
            card.author = decrypt_bl(ds_map_find_value(leveldata, "author"))
            loading = 0
            obj_DSM_control_game.active = 1
            mensaje = ""
            codigo = ""
            alarm[2] = -1
        }
        else if ds_map_exists(map, "message")
        {
            mensaje = ds_map_find_value(map, "message")
            loading = 0
            alarm[2] = -1
        }
        ds_map_destroy(map)
    }
    else if (rows_perpage == 0)
    {
        mensaje = "Ocurrio un error"
        loading = 0
        alarm[2] = -1
    }
}