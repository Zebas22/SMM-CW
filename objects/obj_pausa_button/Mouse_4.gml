if ((!instance_exists(obj_settings_panel)) && canpress == 1 && image_index == 0 && ((!instance_exists(obj_nm_like_heart)) || (instance_exists(obj_nm_like_heart) && obj_nm_like_heart.loading == 0)) && ((!instance_exists(obj_nm_dislike_heart)) || (instance_exists(obj_nm_dislike_heart) && obj_nm_dislike_heart.loading == 0)))
{
    image_index = 1
    c_button = 16777215
    switch type
    {
        case 0:
            audio_play_sound(snd_pausa, 0, false)
            break
        case 1:
            audio_play_sound(snd_volver_a_empezar, 0, false)
            break
        case 2:
            audio_play_sound(snd_salir_del_nivel, 0, false)
            if (global.postnivel != 0)
            {
				global.postnivel = 0
            }
            break
    }

    alarm[1] = 6
}

