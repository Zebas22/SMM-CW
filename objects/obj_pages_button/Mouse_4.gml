if (obj_nivelesmundiales.active == 1)
{
    if (direct == 1)
    {
        if (obj_nivelesmundiales.page < obj_nivelesmundiales.pages)
        {
            obj_nivelesmundiales.page++
            global.pages_nm++
            global.map_consult = -4
            global.type_consult = -4
            with (obj_nivelesmundiales)
            {
                event_user(0)
                loading = 1
                obj_nivelesmundiales.active = 0
                alarm[0] = 5
            }
        }
    }
    else if (obj_nivelesmundiales.page > 1)
    {
        obj_nivelesmundiales.page--
        global.pages_nm--
        global.map_consult = -4
        global.type_consult = -4
        with (obj_nivelesmundiales)
        {
            event_user(0)
            loading = 1
            obj_nivelesmundiales.active = 0
            alarm[0] = 5
        }
    }
}

