if instance_exists(obj_mario)
{
    if (obj_mario.x > x)
    {
        with (instance_create((x + 3), (y - 8), obj_boomerang))
        {
            hspeed = 2
            parent = other
            direct = 1
        }
    }
    else if (obj_mario.x < x)
    {
        with (instance_create((x - 3), (y - 8), obj_boomerang))
        {
            hspeed = -2
            parent = other
            direct = -1
        }
    }
}
else
{
    with (instance_create((x + 3), (y - 8), obj_boomerang))
    {
        hspeed = (2 * other.direct)
        parent = other
        direct = 1
    }
}
trow = 2
if (global.apariencia != 3)
    alarm[6] = 5


