switch global.apariencia
{
    case 0:
        jumping = 1
        hspeed = 1
        if (swimming == 0)
            vspeed = -4.4
        else
            vspeed = -2.2
        break
    case 1:
        jumping = 1
        hspeed = 1
        if (swimming == 0)
            vspeed = -4.4
        else
            vspeed = -2.2
        break
    case 2:
        with (instance_create((x + 8), (y + 8), obj_shard))
        {
            sprite_index = spr_egg_bits
            motion_set(45, 4)
            image_speed = 0
            image_index = 3
            alarm[0] = 25
        }
        with (instance_create((x + 8), (y + 8), obj_shard))
        {
            sprite_index = spr_egg_bits
            motion_set(60, 4)
            image_speed = 0
            image_index = 1
            alarm[0] = 25
        }
        with (instance_create((x + 8), (y + 8), obj_shard))
        {
            sprite_index = spr_egg_bits
            motion_set(120, 4)
            image_speed = 0
            image_index = 0
            alarm[0] = 25
        }
        with (instance_create((x + 8), (y + 8), obj_shard))
        {
            sprite_index = spr_egg_bits
            motion_set(135, 4)
            image_speed = 0
            image_index = 2
            alarm[0] = 25
        }
        visible = false
        alarm[2] = 2
        break
}


