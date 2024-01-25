switch global.apariencia
{
    case 0:
        switch global.bg_level
        {
            case "castle":
                sprite_index = spr_SMB_lava
                break
        }
        break
    case 1:
        switch global.bg_level
        {
            case "castle":
                sprite_index = spr_SMB3_lava
                break
        }
        break
    case 2:
        switch global.bg_level
        {
            case "castle":
                sprite_index = spr_lava
                break
        }
        break
}