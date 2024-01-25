if (anim == 1)
{
    if (y > (camera_get_view_x(view_get_camera(0)) + 24))
        y -= 2
    else
    {
        y = (camera_get_view_x(view_get_camera(0)) + 24)
        anim = 0
    }
}
else if (anim == 2)
{
    if (y < (camera_get_view_x(view_get_camera(0)) + 67))
        y += 2
    else
    {
        y = (camera_get_view_x(view_get_camera(0)) + 67)
        anim = 0
    }
}

