for (v = 0; v < size_y; v++)
{
    if (v == 0)
        index = 0
    else if (v == 1)
        index = 1
    else
        index = 2
    draw_sprite(sprites, index, x, (y + (v * 16)))
}