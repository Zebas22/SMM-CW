gravity = 0.2
switch global.apariencia
{
    case 0:
        audio_stop_sound(snd_SMB_bowser_dead)
        audio_play_sound(snd_SMB_bowser_dead, 0, false)
        break
    case 1:
        audio_stop_sound(snd_SMB_bowser_dead)
        audio_play_sound(snd_SMB_bowser_dead, 0, false)
        break
    case 2:
        audio_stop_sound(snd_enemy_fall_castle)
        audio_play_sound(snd_enemy_fall_castle, 0, false)
        break
}


