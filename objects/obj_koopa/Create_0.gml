switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_koopa
        sprite_wings = spr_SMB_wings
        para_y = 2
        image_speed = 0.1
        break
    case 1:
        sprite_index = spr_SMB3_koopa
        sprite_wings = spr_SMB3_wings
        para_y = 0
        image_speed = 0.1
        break
    case 2:
        sprite_wings = spr_wings
        para_y = 0
        image_speed = 0.1
        break
}

hardness = 0
stomp = 0
edible = 1
wings = 0
wings_anim = 0
paracaidas = 0
para_rot = 0
key = 0
modo_lava = 0
dead_h = 0
direct = -1
innave = 0
swimming = 0
turning = 0
apilar = 0
mebelow = -4
wake = 0
alarm[10] = 1
