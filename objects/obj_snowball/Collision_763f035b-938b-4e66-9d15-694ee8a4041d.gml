var xy, frozen;
if (other.object_index != obj_grinder && other.visible == true)
{
    if ((other.hardness < 99 || other.object_index == obj_drybones) && other.sprite_height <= 36 && other.object_index != obj_buzzybeetle_b && other.object_index != obj_lakitu && other.object_index != obj_floruga && other.object_index != obj_floruga_body && other.object_index != obj_chain_chomp_free)
    {
        if (other.object_index == obj_pokey)
            xy = (other.y - 4)
        else
            xy = other.y
        frozen = instance_create(other.x, xy, obj_enemyfrozen)
        frozen.sprite = other.sprite_index
        frozen.index = other.image_index
        frozen.enemy = other.object_index
        frozen.direct = other.direct
        if ((other.object_index == obj_cheepcheep || other.object_index == obj_cheepcheep2) && other.modo_water == 1)
        {
            alarm[4] = -1
            alarm[5] = -1
        }
        else if (other.object_index == obj_bulletbull_red)
        {
            frozen.enable_gravity = 0
            frozen.rotacion = other.direction
            frozen.direct = 1
        }
        else if (other.object_index == obj_bulletbill)
            frozen.enable_gravity = 0
        else if (other.object_index == obj_pokey)
        {
            frozen.enable_gravity = 0
            with (frozen)
            {
                alarm[4] = 120
                alarm[6] = 180
                pos_y = -4
            }
        }
        else if (other.vspeed != 0)
        {
            frozen.enable_gravity = 0
            with (frozen)
            {
                alarm[4] = 120
                alarm[6] = 180
            }
        }
        else
        {
            with (frozen)
            {
                alarm[4] = 540
                alarm[5] = 600
            }
        }
        switch other.object_index
        {
            case obj_koopa:
                frozen.sprite_index = spr_frozenblock_24x36
                break
            case 33:
                frozen.sprite_index = spr_frozenblock_24x36
                break
            case 61:
                frozen.sprite_index = spr_frozenblock_24x36
                break
            case 44:
                frozen.sprite_index = spr_frozenblock_32x32
                break
            case 45:
                frozen.sprite_index = spr_frozenblock_32x32
                break
            case 46:
                frozen.sprite_index = spr_frozenblock_32x32
                break
            case 101:
                frozen.sprite_index = spr_frozenblock_32x32
                break
            case 51:
                frozen.sprite_index = spr_frozenblock_32x32
                break
            case 91:
                frozen.sprite_index = spr_frozenblock_32x32
                break
            case 69:
                frozen.sprite_index = spr_frozenblock_32x32
                break
            case 75:
                frozen.sprite_index = spr_frozenblock_36x24
                break
            case 76:
                frozen.sprite_index = spr_frozenblock_32x32
                break
            case obj_mario:
                frozen.sprite_index = spr_frozenblock_32x32_2
                break
        }

        with (other.id)
            instance_destroy()
    }
    event_user(0)
}


