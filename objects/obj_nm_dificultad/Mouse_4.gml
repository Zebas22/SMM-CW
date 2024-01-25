if (press == 1 && instance_exists(obj_nivelesmundiales))
{
    var style = obj_nivelesmundiales.dificultad
    if (type == 0)
    {
        if (image_index == 1 && style > -1)
        {
            obj_nivelesmundiales.dificultad--
            if (obj_nivelesmundiales.dificultad == -1)
                image_index = 0
            else
            {
                with (obj_nm_dificultad)
                    image_index = 1
            }
        }
    }
    else if (image_index == 1 && style < 3)
    {
        obj_nivelesmundiales.dificultad++
        if (obj_nivelesmundiales.dificultad == 3)
            image_index = 0
        else
        {
            with (obj_nm_dificultad)
                image_index = 1
        }
    }
    if (obj_nivelesmundiales.dificultad == -1)
        data = ""
    else
        data = ("&dificultad=" + string(obj_nivelesmundiales.dificultad))
    obj_nm_search_btn.dificultad = data
}


