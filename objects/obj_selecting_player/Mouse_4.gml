if (active != 2)
{
    with (obj_selecting_player)
    {
        if (active == 1)
            active = 0
    }
    active = 1
    audio_stop_sound(snd_mario_voice)
    audio_stop_sound(snd_luigi_voice)
    audio_stop_sound(snd_toad_voice)
    audio_stop_sound(snd_letsgo_toadette)
    audio_stop_sound(snd_toadette_voice)
    global.jugador = value
}

