image_speed = 0
c_title = c_dkgray
if instance_exists(obj_creator_jugar_editar)
    audio_pause_sound(obj_creator_jugar_editar.music_editor)
instance_create((camera_get_view_x(view_get_camera(0)) + 20), (camera_get_view_y(view_get_camera(0)) + 96), obj_input)
instance_create((camera_get_view_x(view_get_camera(0)) + 168), (camera_get_view_y(view_get_camera(0)) + 126), obj_button_notification_aceptar)
instance_create((camera_get_view_x(view_get_camera(0)) + 364), (camera_get_view_y(view_get_camera(0)) + 4), obj_button_notification_cancelar)

