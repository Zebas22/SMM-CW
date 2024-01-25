if (time > 0)
{
    time--
    text = (string(time) + "s")
    if (time == 0)
    {
        canpress = 1
        image_index = 0
        c_button = c_white
        text = "Retry"
        obj_makers.active = 1
    }
    else
        alarm[2] = 60
}


