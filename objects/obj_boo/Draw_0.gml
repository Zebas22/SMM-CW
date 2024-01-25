switch inup
{
    case 1:
        draw_sprite_ext(sprite_index, image_index, x, y, direct, -1, 0, c_white, 1)
        break
    case 2:
        draw_sprite_ext(sprite_index, image_index, round(x), y, direct, 1, 0, c_white, 1)
        break
    default:
        draw_sprite_ext(sprite_index, movenow, round(x), y, direct, 1, 0, c_white, 1)
        if (wings == 1)
            draw_sprite_ext(sprite_wings, wings_anim, (x - (9 * direct)), (y - 25), direct, 1, 0, c_white, 1)
}


