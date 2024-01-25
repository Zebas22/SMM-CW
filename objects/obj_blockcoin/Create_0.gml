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

global.coins++
if (global.apariencia == 3)
    image_speed = 1
else
    image_speed = 0.3
downwards = 0
alarm[0] = 1
audio_stop_sound(scr_snd_coin())
audio_play_sound(scr_snd_coin(), 0, false)

