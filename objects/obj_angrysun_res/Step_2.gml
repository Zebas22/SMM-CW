switch global.apariencia
{
    case 0:
        if (global.modo_noche == 1)
            sprite_index = spr_SMB_happymoon
        else
            sprite_index = spr_SMB_angrysun
        break
    case 1:
        if (global.modo_noche == 1)
            sprite_index = spr_SMB3_happymoon
        else
            sprite_index = spr_SMB3_angrysun
        break
    case 2:
        if (global.modo_noche == 1)
            sprite_index = spr_happymoon
        else
            sprite_index = spr_angrysun
        break
}


