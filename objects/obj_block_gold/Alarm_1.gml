vspeed = 0
y = ystart
if (cointime == 2)
{
    with (instance_create(x, y, obj_coin_pow))
    {
        hspeed = -1
        vspeed = -2
    }
    with (instance_create(x, y, obj_coin_pow))
    {
        hspeed = -0.5
        vspeed = -2.2
    }
    with (instance_create(x, y, obj_coin_pow))
    {
        hspeed = -0.6
        vspeed = -2
    }
    with (instance_create(x, y, obj_coin_pow))
    {
        hspeed = 1
        vspeed = -2
    }
    with (instance_create(x, y, obj_coin_pow))
    {
        hspeed = 0.5
        vspeed = -2.2
    }
    with (instance_create(x, y, obj_coin_pow))
    {
        hspeed = -0.6
        vspeed = -2
    }
    instance_create(x, y, obj_smoke)
    instance_destroy()
}
else
    ready = 0

