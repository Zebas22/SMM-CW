var resultado, map;
if (ds_map_find_value(async_load, "id") == url )
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
            obj_DSM_control.active = 1
			loading = 0
			room_goto(rm_DSM_game)
        }
        else if ds_map_exists(map, "message")
        {
            obj_DSM_control.active = 1
			loading = 0
        }
        ds_map_destroy(map)
    }
}