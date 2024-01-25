if (other.held == 0)
{
    audio_stop_sound(scr_snd_kick())
    audio_play_sound(scr_snd_kick(), 0, false)
    with (other.id)
    {
        event_user(0)
    }
}

