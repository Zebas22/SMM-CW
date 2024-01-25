if (image_speed == 0 && image_index == 12 && mouse_x > (camera_get_view_x(view_get_camera(0)) + 329) && mouse_x < (camera_get_view_x(view_get_camera(0)) + 342) && mouse_y > (camera_get_view_y(view_get_camera(0)) + 46) && mouse_y < (camera_get_view_y(view_get_camera(0)) + 59))
{
    audio_play_sound(snd_close_guardabot, 0, false)
    event_user(0)
}

