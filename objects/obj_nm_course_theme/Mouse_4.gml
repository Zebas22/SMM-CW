if (press == 1 && instance_exists(obj_nivelesmundiales))
{
    var style = obj_nivelesmundiales.course_theme
    if (type == 0)
    {
        if (image_index == 1 && style > -1)
        {
            obj_nivelesmundiales.course_theme--
            if (obj_nivelesmundiales.course_theme == -1)
                image_index = 0
            else
            {
                with (obj_nm_course_theme)
                    image_index = 1
            }
        }
    }
    else if (image_index == 1 && style < 11)
    {
        obj_nivelesmundiales.course_theme++
        if (obj_nivelesmundiales.course_theme == 11)
            image_index = 0
        else
        {
            with (obj_nm_course_theme)
                image_index = 1
        }
    }
    if (obj_nivelesmundiales.course_theme == -1)
        data = ""
    else
        data = ("&entorno=" + string(obj_nivelesmundiales.course_theme))
    obj_nm_search_btn.course_theme = data
}
