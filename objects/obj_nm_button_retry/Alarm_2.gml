if (time > 0)
{
    time--
    text = (string(time) + "s")
    if (time == 0)
    {
        canpress = 1
        image_index = 0
        c_button = make_colour_rgb(89, 15, 16)
        text = "Reintentar"
        obj_nivelesmundiales.active = 1
    }
    else
        alarm[2] = 60
}


