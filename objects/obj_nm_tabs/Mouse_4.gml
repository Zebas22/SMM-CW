if (has_internet() && image_index == 0 && obj_nivelesmundiales.active == 1 && obj_nivelesmundiales.loading == 0)
{
    with (obj_nm_button_retry)
        instance_destroy()
    with (obj_nm_tabs)
    {
        image_index = 0
        c_color = c_button
    }
    image_index = 1
    c_color = 16777215
    global.map_consult = -4
    global.type_consult = -4
    global.pages_nm = 1
    global.tabvalue = value
    with (obj_nivelesmundiales)
    {
        page = 1
        if (other.value != 3)
            active = 0
        else
            pages = 1
        mensaje = ""
        codigo = ""
        type_consulta = other.value
        event_user(0)
        alarm[0] = 5
    }
}


