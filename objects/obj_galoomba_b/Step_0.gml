event_inherited()
if (paracaidas == 1)
{
    image_speed = 0.1
    if (global.apariencia == 3)
        anim += 0.5
    else
        anim += 0.15
    switch global.apariencia
    {
        case 0:
            if (object_index == obj_galoomba2)
                sprite_index = spr_SMB_goomba2_float
            else
                sprite_index = spr_SMB_goomba_float
            break
        case 1:
            if (object_index == obj_galoomba2)
                sprite_index = spr_SMB3_goomba2_float
            else
                sprite_index = spr_SMB3_goomba_float
            break
        case 2:
            if (object_index == obj_galoomba2)
                sprite_index = spr_goomba2_float
            else
                sprite_index = spr_goomba_float
            break
    }

    direct = -1
    if (x > (xstart + 16))
    {
        if (hspeed < -1)
            hspeed = -1
        else
            hspeed -= 0.030
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 1)
            hspeed = 1
        else
            hspeed += 0.030
    }
    if (gravity == 0)
    {
        switch global.apariencia
        {
            case 0:
                if (object_index == obj_galoomba2)
                    sprite_index = spr_SMB_goomba2
                else
                    sprite_index = spr_SMB_goomba_b
                break
            case 1:
                if (object_index == obj_galoomba2)
                    sprite_index = spr_SMB3_goomba2
                else
                    sprite_index = spr_SMB3_goomba_b
                break
            case 2:
                if (object_index == obj_galoomba2)
                    sprite_index = spr_galoomba2
                else
                    sprite_index = spr_galoomba_b
                break
        }

        instance_create(x, y, obj_paracaidas_go)
        paracaidas = 0
        anim = 0
        if (global.apariencia == 3)
            image_speed = 0.5
        else
            image_speed = 0.15
        hspeed = 0
        alarm[10] = 10
    }
}
if (wings == 1 && paracaidas == 0)
{
    if (gravity == 0)
    {
        if (object_index == obj_galoomba2 && cambio_gombaya == 1)
        {
            hspeed = (-hspeed)
            cambio_gombaya = 0
        }
        if (jumping > 0 && jumping < 4)
        {
            jumping++
            if (swimming == 0)
                vspeed = -2.5
            else
                vspeed = -1.25
        }
        else if (jumping == 4)
        {
            jumping = 5
            if (swimming == 0)
                vspeed = -4
            else
                vspeed = -2
        }
        else if (jumping == 5)
        {
            jumping = 0
            cambio_gombaya = 1
            alarm[0] = 120
        }
    }
}

