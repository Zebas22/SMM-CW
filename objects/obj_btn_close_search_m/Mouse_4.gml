if (press == 1)
{
    audio_play_sound(snd_item_deselect, 0, false)
    with (obj_makers)
    {
        active = 1
        loading = 0
        mensaje = ""
        codigo = ""
    }
    with (obj_id_input_m)
        instance_destroy()
    instance_destroy()
}


