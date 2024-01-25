if (hammers > 0)
{
    trow = 1
    hammers--
    if (hspeed != 0)
        prev_hspeed = hspeed
    hspeed = 0
        alarm[3] = 10
        alarm[2] = 30
}
else
{
    trow = 0
    hammers = choose(1, 2)
    hspeed = prev_hspeed
        alarm[2] = 120
}


