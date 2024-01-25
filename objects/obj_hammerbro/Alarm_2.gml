
if (hammers > 0)
{
    trow = 1
    hammers--
    if (hspeed != 0)
        prev_hspeed = hspeed
    hspeed = 0
    
        alarm[3] = 10
        alarm[2] = 20
}
else
{
    trow = 0
    hammers = (0 + random(round(3)))
    hspeed = prev_hspeed
        alarm[2] = 80
}


