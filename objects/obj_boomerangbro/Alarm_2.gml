
if (hammers > 0)
{
    trow = 1
    hammers--
    if (hspeed != 0)
        prev_hspeed = hspeed
    hspeed = 0
        alarm[3] = 10
        alarm[2] = 90
}
else
{
    trow = 0
    hammers = choose(1, 2)
    hspeed = prev_hspeed
    if (global.apariencia == 3)
        alarm[2] = 120
    else
        alarm[2] = 120
}


