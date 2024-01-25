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
        if ds_map_exists(map, "success")
        {
            loading = 0
            image_index = 1
            index_heart = 0
        }
		if ds_map_exists(map, "success2")
        {
            loading = 0
            image_index = 0
            index_heart = 0
        }
        else if ds_map_exists(map, "message")
        {
            loading = 0
            time = 10
        }
        alarm[2] = -1
        ds_map_destroy(map)
    }
    else
    {
        loading = 0
        alarm[2] = -1
        time = 10
        alarm[4] = 60
    }
}


