exit
/*var resultado, nuevo_resultado;
if (ds_map_find_value(async_load, "id") == url)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        resultado = ds_map_find_value(async_load, "result")
        nuevo_resultado = string_split(",", resultado, 0)
        if (nuevo_resultado[0] == sha1_string_utf8("0"))
        {
            if instance_exists(obj_load_image)
            {
                with (obj_load_image)
                    instance_destroy()
            }
            with (obj_toast)
                instance_destroy()
            with (instance_create((camera_get_view_x(view_get_camera(0)) + 134), (camera_get_view_y(view_get_camera(0)) + 216), obj_toast))
            {
                sprite_index = spr_notificacion_login
                image_index = 1
            }
            image_index = 0
            press = 0
        }
        else if (nuevo_resultado[0] == sha1_string_utf8("1"))
        {
            if (nuevo_resultado[3] == sha1_string_utf8("-1"))
            {
                if instance_exists(obj_load_image)
                {
                    with (obj_load_image)
                        instance_destroy()
                }
                with (obj_toast)
                    instance_destroy()
                with (instance_create((camera_get_view_x(view_get_camera(0)) + 134), (camera_get_view_y(view_get_camera(0)) + 216), obj_toast))
                {
                    sprite_index = spr_notificacion_login
                    image_index = 2
                }
                image_index = 0
                press = 0
            }
            else if (nuevo_resultado[3] == sha1_string_utf8("1"))
            {
                if instance_exists(obj_load_image)
                {
                    with (obj_load_image)
                        instance_destroy()
                }
                with (obj_toast)
                    instance_destroy()
                with (instance_create((camera_get_view_x(view_get_camera(0)) + 134), (camera_get_view_y(view_get_camera(0)) + 216), obj_toast))
                {
                    sprite_index = spr_notificacion_login
                    image_index = 3
                }
                image_index = 0
                press = 0
            }
            else if (has_internet() && (nuevo_resultado[3] == sha1_string_utf8("0") || nuevo_resultado[3] == sha1_string_utf8("2") || nuevo_resultado[3] == sha1_string_utf8("3") || nuevo_resultado[3] == sha1_string_utf8("4")))
            {
                global.debug1 = nuevo_resultado[0]
                global.debug2 = nuevo_resultado[1]
                global.debug3 = nuevo_resultado[2]
                global.name_user = global.debug3
                global.debug4 = nuevo_resultado[3]
                room_goto(rm_title)
            }
            else
            {
                image_index = 0
                press = 0
                if instance_exists(obj_load_image)
                {
                    with (obj_load_image)
                        instance_destroy()
                }
                with (obj_toast)
                    instance_destroy()
                with (instance_create((camera_get_view_x(view_get_camera(0)) + 134), (camera_get_view_y(view_get_camera(0)) + 216), obj_toast))
                {
                    sprite_index = spr_notificacion_login
                    image_index = 0
                }
            }
        }
    }
    else
    {
        image_index = 0
        press = 0
        if instance_exists(obj_load_image)
        {
            with (obj_load_image)
                instance_destroy()
        }
        with (obj_toast)
            instance_destroy()
        with (instance_create((camera_get_view_x(view_get_camera(0)) + 134), (camera_get_view_y(view_get_camera(0)) + 216), obj_toast))
        {
            sprite_index = spr_notificacion_login
            image_index = 0
        }
    }
}

/**/
