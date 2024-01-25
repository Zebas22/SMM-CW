if (obj_input.new_texto != "")
{
    if (!instance_exists(obj_load_image))
    {
        audio_play_sound(snd_aceptar, 0, false)
        if file_exists(((global.directorio + obj_input.new_texto) + ".cw"))
            scr_toast(1, already_exists)
        else
        {
            with (instance_create((camera_get_view_x(view_get_camera(0)) + 357), (camera_get_view_y(view_get_camera(0)) + 192), obj_load_image))
                pos = 1
            global.instance_deactivate = 0
            alarm[0] = 12
        }
    }
}
else if (obj_input.new_texto == "")
{
    audio_play_sound(snd_wrong, 0, false)
    scr_toast(1, type_name)
}


