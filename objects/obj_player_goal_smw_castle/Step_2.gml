switch global.powerup
{
    case 0:
        mask_index = spr_smallmask
        break
    case -85:
        mask_index = spr_smallmask
        break
    case -77:
        mask_index = spr_megamask
        break
    default:
        mask_index = spr_bigmask
        break
}
if (gravity == 0)
{
    if (hspeed == 0)
    {
        if (global.powerup == -85 && link_mode == 1 && global.yoshi == 0 && (!instance_exists(obj_brickhelmet)))
        {
            switch helmet
            {
                case 1:
                    sprite_index = spr_SMB_link_victory_helmet
                    break
                case 2:
                    sprite_index = spr_SMB_link_victory_helmet2
                    break
                default:
                    sprite_index = spr_SMB_link_victory
            }

            image_speed = 0.15
        }
        else if (fall == 1)
        {
            sprite_index = scr_marioidle()
            image_speed = 0
            image_index = 0
        }
        else
            image_speed = 0
    }
    else
    {
        sprite_index = scr_mariowalk()
        image_speed = abs((hspeed / 10))
    }
}
else
{
    if (vspeed > 0)
        sprite_index = scr_mariodrop()
    else
        sprite_index = scr_mariojump()
    image_speed = 0
}


