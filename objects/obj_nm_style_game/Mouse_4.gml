if (press == 1 && instance_exists(obj_nivelesmundiales))
{
    var style = obj_nivelesmundiales.style_game
    if (type == 0)
    {
        if (image_index == 1 && style > -1)
        {
            obj_nivelesmundiales.style_game--
            if (obj_nivelesmundiales.style_game == -1)
                image_index = 0
            else
            {
                with (obj_nm_style_game)
                    image_index = 1
            }
        }
    }
    else if (image_index == 1 && style < 3)
    {
        obj_nivelesmundiales.style_game++
        if (obj_nivelesmundiales.style_game == 3)
            image_index = 0
        else
        {
            with (obj_nm_style_game)
                image_index = 1
        }
    }
    if (obj_nivelesmundiales.style_game == -1)
        data = ""
    else
        data = ("&aparience=" + string(obj_nivelesmundiales.style_game))
    obj_nm_search_btn.style_game = data
}


