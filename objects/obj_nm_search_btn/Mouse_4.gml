if (press == 1 && image_index == 0)
{
    audio_play_sound(snd_select_tile, 0, false)
    image_index = 1
    event_user(0)
    with (obj_nm_tabs)
    {
        if (value == 4)
        {
            image_index = 1
            c_color = 16777215
        }
        else
        {
            image_index = 0
            c_color = c_button
        }
    }
    global.pages_nm = 1
    global.tabvalue = 4
    with (obj_nivelesmundiales)
    {
        page = 1
        active = 0
        mensaje = ""
        codigo = ""
        type_consulta = 5
        event_user(0)
        alarm[0] = 5
    }
}


