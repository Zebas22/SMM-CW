if (press == 1 && instance_exists(obj_nivelesmundiales))
{
    var style = obj_nivelesmundiales.reaccion
    if (type == 0)
    {
        if (image_index == 1 && style > -1)
        {
            obj_nivelesmundiales.reaccion--
            if (obj_nivelesmundiales.reaccion == -1)
                image_index = 0
            else
            {
                with (obj_nm_reaccion)
                    image_index = 1
            }
        }
    }
    else if (image_index == 1 && style < 1)
    {
        obj_nivelesmundiales.reaccion++
        if (obj_nivelesmundiales.reaccion == 1)
            image_index = 0
        else
        {
            with (obj_nm_reaccion)
                image_index = 1
        }
    }
    switch obj_nivelesmundiales.reaccion
    {
        case -1:
            data = ""
            break
        case 0:
            data = ("&liked=" + string(global.my2))
            break
        case 1:
            data = ("&disliked=" + string(global.my2))
            break
    }

    obj_nm_search_btn.reaccion = data
}


