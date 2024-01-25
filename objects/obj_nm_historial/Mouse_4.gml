if (press == 1 && instance_exists(obj_nivelesmundiales))
{
    var style = obj_nivelesmundiales.historial
    if (type == 0)
    {
        if (image_index == 1 && style > -1)
        {
            obj_nivelesmundiales.historial--
            if (obj_nivelesmundiales.historial == -1)
                image_index = 0
            else
            {
                with (obj_nm_historial)
                    image_index = 1
            }
        }
    }
    else if (image_index == 1 && style < 1)
    {
        obj_nivelesmundiales.historial++
        if (obj_nivelesmundiales.historial == 1)
            image_index = 0
        else
        {
            with (obj_nm_historial)
                image_index = 1
        }
    }
    if (obj_nivelesmundiales.historial == -1)
        data = ""
    else
        data = ("&historial=" + string(obj_nivelesmundiales.historial))
    obj_nm_search_btn.historial = data
}


