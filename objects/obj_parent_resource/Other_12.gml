if (global.cursor == 2)
{
    audio_stop_sound(snd_erase_clean)
    audio_play_sound(snd_erase_clean, 0, false)
}
instance_destroy()

