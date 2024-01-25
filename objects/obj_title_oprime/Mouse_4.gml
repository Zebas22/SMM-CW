audio_play_sound(snd_back, 0, false)
    if instance_exists(obj_button_home)
    {
        with (obj_button_home)
            instance_destroy()
        instance_create((camera_get_view_x(view_get_camera(0)) + 135), (camera_get_view_y(view_get_camera(0)) + 130), obj_editor_screen)
        instance_create((camera_get_view_x(view_get_camera(0)) + 197), (camera_get_view_y(view_get_camera(0)) + 130), obj_play_screen)
    }
	instance_destroy()