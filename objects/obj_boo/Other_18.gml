if (instance_exists(obj_mario) && movenow == 0)
{
    if (obj_mario.x > (x + 8))
    {
        hspeed += velocity
        direct = 1
    }
    else if (obj_mario.x < (x - 8))
    {
        hspeed -= velocity
        direct = -1
    }
    if ((obj_mario.y + 20) > y)
        vspeed += velocity
    else if ((obj_mario.y + 16) < y)
        vspeed -= velocity
}
else
{
    speed = (max(0, (abs(speed) - 0.025)) * sign(speed))
    if (speed < velocity)
        speed = 0
}
movenowprev = movenow
if instance_exists(obj_mario)
{
    if (obj_mario.x > (x + 4))
    {
        if (obj_mario.direct == 1)
        {
            movenow = 0
        }
        else
        {
            movenow = 1
        }
    }
    else if (obj_mario.x < (x - 4))
    {
        if (obj_mario.direct == -1)
        {
            movenow = 0
        }
        else
        {
            movenow = 1
        }
    }
    else
    {
        movenow = 1
    }
}
else
{
    movenow = 1
}