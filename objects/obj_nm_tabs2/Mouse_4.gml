if (has_internet() && image_index == 0 && obj_makers.active == 1  && (!instance_exists(obj_edit_menu)) && obj_makers.loading == 0)
{
    with (obj_nm_button_retry_maker)
        instance_destroy()
    with (obj_nm_tabs2)
    {
        image_index = 0
        c_color = c_button
    }
    image_index = 1
    c_color = c_white
    global.map_consult = -4
    global.type_consult = -4
    global.pages_nm = 1
    global.tabmaker = value
    with (obj_makers)
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


