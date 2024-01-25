if (ds_map_find_value(async_load, "id") == url2)
{
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        if (map == -1)
            show_debug_message("Resultado invalido")
        if ds_map_exists(map, "success")
        {
            scr_toast(0, ds_map_find_value(map, "success"))
            with (obj_iname_control3)
				instance_destroy()
        }
        else if ds_map_exists(map, "message")
        {
            mensaje = ds_map_find_value(map, "message")
            alarm[2] = -1
            time = 5
            alarm[3] = 60
            with (obj_lp_reg)
                new_texto = ""
			with (obj_lun_reg)
                new_texto = ""
			with (obj_lp2_reg)
                new_texto = ""
        }
        ds_map_destroy(map)
}