if (global.levelguardabot != "" && press == 1 && image_index == 0 && obj_guardabot.active == 1)
{
    image_index = 1
    c_button = c_white
    audio_stop_sound(snd_guardabot)
    audio_play_sound(snd_inventory, 0, false)
    alarm[1] = 6
}

