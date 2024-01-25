if (obj_makers.active == 1 && press == 1 && (!instance_exists(obj_id_input_m)) && visible = 1)
{
    audio_play_sound(snd_select_tile, 0, false)
    instance_create_depth(98, 99, -4, obj_id_input_m)
    
}