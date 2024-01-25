switch global.apariencia
{
    case 0:
        switch global.bg_level
        {
            case "castle":
                sprite_index = spr_SMB_coin_dark
                break
            case "ghost":
                sprite_index = spr_SMB_coin_night
                break
            case "underground":
                sprite_index = spr_SMB_coin_night
                break
			case "mountain":
			if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB_coin_dark
                    break
                }
                else
                    sprite_index = spr_SMB_coin
                break
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB_coin_night
                    break
                }
                else
                    sprite_index = spr_SMB_coin
        }

        sprite_wings = spr_SMB_wings_16x16
        break
    case 1:
        switch global.bg_level
        {
            case "castle":
                sprite_index = spr_SMB3_coin_dark
                break
            case "ghost":
                sprite_index = spr_SMB3_coin_night
                break
            case "underground":
                sprite_index = spr_SMB3_coin_night
                break
			case "mountain":
			if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB3_coin_dark
                    break
                }
                else
                    sprite_index = spr_SMB3_coin
                break
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB3_coin_night
                    break
                }
                else
                    sprite_index = spr_SMB3_coin
        }

        sprite_wings = spr_SMB3_wings2
        break
    case 2:
        sprite_index = spr_coin
        sprite_wings = spr_wings_items
        break
}

if (global.apariencia == 3)
    image_speed = 0.3
else
    image_speed = 0.15
convertirse = 1
wings = 0
wings_anim = 0
paracaidas = 0
alarm[10] = 4

