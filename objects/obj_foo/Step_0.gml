if (dead == 1)
    exit
if (global.apariencia != 3)
{
    y = (ystart + (sin((timer * 0.04375)) * 2))
    timer++
}
if (sprite_index == s_foo_mist)
{
    if (cfoo == 1)
    {
        with (instance_create(x, (y + pos_y), obj_foo_fog))
        {
            if (other.direct == 1)
                motion_set(random_range(-15, 15), random_range(1, 1.5))
            else
                motion_set(random_range(165, 195), random_range(1, 1.5))
        }
        cfoo = 2
    }
    else
        cfoo--
}
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    direct = -1
else
    direct = 1
if (blowtime <= 200)
{
        sprite_index = s_foo_mist
        switch global.apariencia
        {
            case 0:
                image_speed = 0
                break
            case 1:
                image_speed = 0
                break
            case 2:
                image_speed = 0.15
                break
        }

}
else if (blowtime > 200)
{
    sprite_index = s_foo_idle
    if (global.apariencia == 3)
        image_speed = 0.25
    else
        image_speed = 0
}
blowtime--
if (blowtime < 0)
    blowtime = 600

