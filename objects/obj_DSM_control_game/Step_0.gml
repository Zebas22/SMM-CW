if (global.DSM_2 == 0)
{
    if (global.DSM_level == 0)
    {
        x_level = 111
        x_mario = 0
        y_level = 155
    }
    else if (global.DSM_level == 1)
    {
        x_level = 157
        x_mario = 110
        y_level = 155
    }
    else if (global.DSM_level == 2)
    {
        x_level = 203
        x_mario = 220
        y_level = 155
    }
    else if (global.DSM_level == 3)
    {
        x_level = 249
        x_mario = 330
        y_level = 155
    }
    else if (global.DSM_level == 4)
    {
        x_level = 294
        x_mario = 440
        y_level = 155
    }
    else if (global.DSM_level == 5)
    {
        x_level = 341
        x_mario = 550
        y_level = 155
    }
    else if (global.DSM_level == 6)
    {
        x_level = 341
        x_mario = 330
        y_level = 155
        global.DSM_2 = 1
    }
}
if (global.DSM_2 == 1)
{
    if (global.DSM_level == 6)
    {
        x_level = 111
        x_mario = 0
        y_level = 155
    }
    else if (global.DSM_level == 7)
    {
        x_level = 157
        x_mario = 110
        y_level = 155
    }
    else if (global.DSM_level == 8)
    {
        x_level = 203
        x_mario = 220
        y_level = 155
    }
    else if (global.DSM_level == 9)
    {
        x_level = 249
        x_mario = 330
        y_level = 155
    }
    else if (global.DSM_level == 10)
    {
        x_level = 294
        x_mario = 440
        y_level = 155
    }
    else if (global.DSM_level == 11)
    {
        x_level = 341
        x_mario = 550
        y_level = 155
    }
}
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