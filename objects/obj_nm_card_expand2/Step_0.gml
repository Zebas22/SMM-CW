if (mouse_x > (camera_get_view_x(view_get_camera(0)) + 236) && mouse_x < (camera_get_view_x(view_get_camera(0)) + 309) && mouse_y > (camera_get_view_y(view_get_camera(0)) + 168) && mouse_y < (camera_get_view_y(view_get_camera(0)) + 192))
{
    if mouse_check_button_pressed(mb_left)
        clipboard_set_text(_id)
}