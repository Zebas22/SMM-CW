var resultado, map;
if (verify == 1)
{
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
                text1 = decrypt_bl(ds_map_find_value(map, "success"))
                text2 = decrypt_bl(ds_map_find_value(map, "id"))
                loading = 0
                with (instance_create((camera_get_view_x(view_get_camera(0)) + 168), (camera_get_view_y(view_get_camera(0)) + 130), obj_continue_btn)){
				   text = "Copy finish"
				}
                instance_create((camera_get_view_x(view_get_camera(0)) + 236), (camera_get_view_y(view_get_camera(0)) + 130), obj_cursor)
            }
            else if ds_map_exists(map, "message")
            {
                mensaje = ds_map_find_value(map, "message")
                loading = 0
                with (obj_continue_btn)
                    instance_destroy()
                with (instance_create((camera_get_view_x(view_get_camera(0)) + 168), (camera_get_view_y(view_get_camera(0)) + 130), obj_continue_btn)){
						text = "Exit Course"
				}
                instance_create((camera_get_view_x(view_get_camera(0)) + 236), (camera_get_view_y(view_get_camera(0)) + 130), obj_cursor)
            }
            alarm[2] = -1
            ds_map_destroy(map)
        }
        else if (!instance_exists(obj_continue_btn))
        {
			mensaje = "Couldn't upload the level"
            loading = 0
            with (obj_continue_btn)
                instance_destroy()
            with (instance_create((camera_get_view_x(view_get_camera(0)) + 168), (camera_get_view_y(view_get_camera(0)) + 130), obj_continue_btn)){
						text = "Exit Course"
		}
            instance_create((camera_get_view_x(view_get_camera(0)) + 236), (camera_get_view_y(view_get_camera(0)) + 130), obj_cursor)
            alarm[2] = -1
        }
    }
}
if(global.dsm == 1){
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
				global.DSM_level++
			}
		}
	}
}


