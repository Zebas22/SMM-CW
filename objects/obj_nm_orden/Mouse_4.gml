if (press == 1 && instance_exists(obj_nivelesmundiales))
{
    var style = obj_nivelesmundiales.orden
    if (type == 0)
    {
        if (image_index == 1 && style > 0)
        {
            obj_nivelesmundiales.orden--
            with (obj_nm_orden)
                image_index = 1
            image_index = 0
        }
    }
    else if (image_index == 1 && style < 1)
    {
        obj_nivelesmundiales.orden++
        with (obj_nm_orden)
            image_index = 1
        image_index = 0
    }
    if (obj_nivelesmundiales.orden == 0)
        data = ""
    else
        data = "&sort=antiguos"
    obj_nm_search_btn.orden = data
}


