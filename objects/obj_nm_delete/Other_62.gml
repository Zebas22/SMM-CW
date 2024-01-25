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
        if (!(ds_map_exists(map, "message")))
        {
            global.map_consult = -4
            global.type_consult = -4
            room_restart()
        }
        else if ds_map_exists(map, "message")
        {
            var mes = ds_map_find_value(map, "message")
            scr_toast(1, mes)
        }
        ds_map_destroy(map)
    }
    else
        scr_toast(1, err_occ)
}


