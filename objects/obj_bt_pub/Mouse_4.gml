if (global.levelguardabot != "" && press == 1 && image_index == 0 && global.my1 == user_temp && obj_guardabot.active == 1)
{
    audio_play_sound(snd_aceptar, 0, false)
    if (global.my1 == 0 || global.my2 == 0 || global.my3 == -1 || global.my4 == -1 || global.my5 == 0 ||  global.my6 == -1)
        instance_create((camera_get_view_x(view_get_camera(0)) + 112), (camera_get_view_y(view_get_camera(0)) + 12), obj_iname_control2)
    else
    {
        image_index = 1
        alarm[0] = 16
    }
}


