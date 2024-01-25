if (ds_map_find_value(async_load, "id") == url)
{
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        if (map == -1)
            show_debug_message("Resultado invalido")
        if ds_map_exists(map, "id")
        {
			global.my1 = decrypt_bl(ds_map_find_value(map, "alias"))
			global.my2 = decrypt_bl(ds_map_find_value(map, "id"))
            global.my3 = ds_map_find_value(map, "admin")
            global.my4 = ds_map_find_value(map, "booster")
            global.my5 = string(ds_map_find_value(map, "auth_code"))
            global.my6 = ds_map_find_value(map, "goomba")
            global.my7 = ds_map_find_value(map, "mod")
			with (obj_persistent)
                event_user(7)
            if (room == rm_intro)
                room_goto(rm_title)
            else
            {
                scr_toast(0, sess_start)
                with (obj_iname_control2)
                    instance_destroy()
            }
        }
        else if ds_map_exists(map, "message")
        {
            mensaje = ds_map_find_value(map, "message")
			codigo = ds_map_find_value(map, "code")
            alarm[2] = -1
            time = 5
            alarm[3] = 60
            with (obj_lp)
                new_texto = ""
        }
        ds_map_destroy(map)
}