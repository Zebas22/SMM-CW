switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_bonybeetle_crumble_b
        image_speed = 0
        break
    case 1:
        sprite_index = spr_SMB3_bonybeetle_crumble_b
        image_speed = 0
        break
    case 2:
        image_speed = 0
        break
}
s_dry = spr_drybones_deads
hardness = 100
stomp = -1
edible = 2
big = 0
dead_h = 0
apilar = 0
direct = 1
shake = 0
audio_stop_sound(snd_crumble)
audio_play_sound(snd_crumble, 0, false)
alarm[0] = 8