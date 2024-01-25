event_inherited()
switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_bobomb_ready
        break
    case 1:
        sprite_index = spr_SMB3_bobomb_ready
        break
    case 2:
        sprite_index = spr_bobomb_ready
        break
}
image_speed = 0.2
alarm[1] = 300
time_blow = 0
s_bobomb = spr_bobomb_ready