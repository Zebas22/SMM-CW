if (image_speed == 0 && image_index == 4 && mouse_x > (__view_get( e__VW.XView, 0 ) + 161) && mouse_x < (__view_get( e__VW.XView, 0 ) + 172) && mouse_y > (__view_get( e__VW.YView, 0 ) + 40) && mouse_y < (__view_get( e__VW.YView, 0 ) + 50))
{
    audio_play_sound(snd_panel_close, 0, false)
    event_user(0)
}

