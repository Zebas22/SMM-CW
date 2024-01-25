if (instance_exists(obj_id_input) && obj_id_input.long == 14 && image_index == 0)
{
    with (obj_id_input)
        write = 0
    audio_play_sound(snd_select_tile, 0, false)
    image_index = 1
    alarm[0] = 10
    with (obj_nivelesmundiales)
        loading = 1
}


