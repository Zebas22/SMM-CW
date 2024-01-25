if instance_exists(obj_mario)
{
    if (obj_mario.x > x)
    {
        with (instance_create(x, (y - 10), obj_brohammer))
        {
            hspeed = 1.5
            direct = 1
        }
    }
    else if (obj_mario.x < x)
    {
        with (instance_create(x, (y - 10), obj_brohammer))
        {
            hspeed = -1.5
            direct = -1
        }
    }
}
else
{
    with (instance_create(x, (y - 10), obj_brohammer))
    {
        hspeed = -1.5
        direct = -1
    }
}
trow = 2
if (global.apariencia != 3)
    alarm[5] = 5

