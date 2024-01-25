switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_castle_dooropen
        break
    case 1:
        sprite_index = spr_SMB3_castle_dooropen
        break
    case 2:
        sprite_index = spr_castle_opendoor
        break
}

image_speed = 0
image_index = 0
instance_create((x + 48), y, obj_castle_front)

