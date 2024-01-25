switch difficulty
{
    case 0:
        dsm_music = snd_DSM_1
        break
    case 1:
        dsm_music = snd_DSM_2
        break
    case 2:
        dsm_music = snd_DSM_3
        break
    case 3:
        dsm_music = snd_DSM_4
        break
}

if (!audio_is_playing(dsm_music))
    audio_play_sound(dsm_music, 1, true)
if (loading != 0)
    rot -= 8