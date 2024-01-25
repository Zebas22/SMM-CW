switch global.apariencia
{
    case 0:
        audio_stop_sound(snd_SMB3_estalactita_break)
        audio_play_sound(snd_SMB3_estalactita_break, 0, false)
        break
    case 1:
        audio_stop_sound(snd_SMB3_estalactita_break)
        audio_play_sound(snd_SMB3_estalactita_break, 0, false)
        break
    case 2:
        audio_stop_sound(snd_estalactita_break)
        audio_play_sound(snd_estalactita_break, 0, false)
        break
}

with (instance_create((x - 4), (y + 4), obj_shard))
{
    motion_set(30, 5)
    sprite_index = spr_icicle_break
    image_index = global.apariencia
    dir = 1
    direct = -1
}
with (instance_create((x + 4), (y + 4), obj_shard))
{
    motion_set(150, 5)
    sprite_index = spr_icicle_break
    image_index = global.apariencia
    dir = 0
}
y = (room_height + 64)

