if (global.cursor == 2)
{
    cursor = spr_cursor_clean
    if (fast_clean == 1)
        i_index = 1
    else
        i_index = 0
}
else
{
	cursor = spr_cursor_mario
    switch global.cursor
    {
        case 0:
            i_index = 0
            break
        case 1:
            i_index = 1
            break
    }

}
