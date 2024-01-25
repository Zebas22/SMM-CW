if instance_exists(obj_mario)
{
    if (obj_mario.x > x)
    {
        with (instance_create((x - 5), (y - 8), obj_brohammer))
        {
            hspeed = 1.5
            direct = 1
        }
    }
    else if (obj_mario.x < x)
    {
        with (instance_create((x + 5), (y - 8), obj_brohammer))
        {
            hspeed = -1.5
            direct = -1
        }
    }
}
else
{
    with (instance_create((x + 5), (y - 8), obj_brohammer))
    {
        hspeed = (1.5 * other.direct)
        direct = other.direct
    }
}
trow = 2
if (global.apariencia != 3)
    alarm[6] = 5


