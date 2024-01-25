if (instance_exists(obj_id_input_m) && obj_id_input_m.long == 11 && image_index == 0)
{
    with (obj_id_input_m)
        write = 0
    audio_play_sound(snd_select_tile, 0, false)
    image_index = 1
    alarm[0] = 10
    with (obj_makers)
        loading = 1
}


