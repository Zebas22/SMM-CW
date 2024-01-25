if (spiny == 1)
{
    if (image_index >= 2.85)
    {
        image_speed = 0
        image_index = 2.85
    }
}
else if (spiny == 2)
{
    if (image_index <= 0.15)
    {
        sprite_index = s_bonybeetle
        image_speed = 0.15
        image_index = 0
        spiny = 0
        stomp = 3
        alarm[10] = 2
        alarm[0] = 180
    }
}
