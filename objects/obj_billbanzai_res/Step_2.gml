if (obj_levelmanager.editor == 1)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_banzaibill
            image_speed = 0
            if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
                image_index = 1
            else
                image_index = 0
            break
        case 1:
            sprite_index = spr_SMB3_banzaibill
            image_speed = 0
            if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
                image_index = 1
            else
                image_index = 0
            break
        case 2:
            sprite_index = spr_banzaibill
            break
    }

}
if (poder_girar == 1)
{
    if (rotacion >= (R + 90))
    {
        rotacion = (R + 90)
        R = rotacion
        poder_girar = 0
    }
    else
        rotacion += 10
}

