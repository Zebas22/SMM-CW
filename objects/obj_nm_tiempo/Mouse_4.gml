if (press == 1 && instance_exists(obj_nivelesmundiales))
{
    var style = obj_nivelesmundiales.tiempo
    if (type == 0)
    {
        if (image_index == 1 && style > -1)
        {
            obj_nivelesmundiales.tiempo--
            if (obj_nivelesmundiales.tiempo == -1)
                image_index = 0
            else
            {
                with (obj_nm_tiempo)
                    image_index = 1
            }
        }
    }
    else if (image_index == 1 && style < 7)
    {
        obj_nivelesmundiales.tiempo++
        if (obj_nivelesmundiales.tiempo == 7)
            image_index = 0
        else
        {
            with (obj_nm_tiempo)
                image_index = 1
        }
    }
    if (obj_nivelesmundiales.tiempo == -1)
        data = ""
    else
        data = ("&last=" + string(text_data[obj_nivelesmundiales.tiempo]))
    obj_nm_search_btn.tiempo = data
}


