if instance_exists(obj_creator_jugar_editar)
    audio_pause_sound(obj_creator_jugar_editar.music_editor)
image_speed = 0
image_index = 0
instance_create((camera_get_view_x(view_get_camera(0)) + 215), (camera_get_view_y(view_get_camera(0)) + 7), obj_button_close_menu)
if (!instance_exists(obj_button_home))
{
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 218), (camera_get_view_y(view_get_camera(0)) + 32), obj_button_home))
    {
        if (room == rm_editor)
        {
            sprite_index = s_press
            disabled = 1
			c_color = c_white
        }
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 218), (camera_get_view_y(view_get_camera(0)) + 76), obj_button_home))
    {
        image_index = 1
        if (room == rm_desafio_super_mario)
        {
            sprite_index = s_press
            disabled = 1
			c_color = c_white
        }
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 218), (camera_get_view_y(view_get_camera(0)) + 108), obj_button_home))
    {
        image_index = 2
        if (room == rm_course_world || room == rm_niveles_mundiales || room == rm_makers)
        {
            sprite_index = s_press
            disabled = 1
			c_color = c_white
        }
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 218), (camera_get_view_y(view_get_camera(0)) + 140), obj_button_home))
    {
        image_index = 3
        if (room == rm_guardabot)
        {
            sprite_index = s_press
            disabled = 1
			c_color = c_white
        }
    }
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 226), (camera_get_view_y(view_get_camera(0)) + 183), obj_settings_button))
    image_index = 2
with (instance_create((camera_get_view_x(view_get_camera(0)) + 343), (camera_get_view_y(view_get_camera(0)) + 183), obj_settings_button))
    image_index = 3
instance_create((camera_get_view_x(view_get_camera(0)) + 265), (camera_get_view_y(view_get_camera(0)) + 183), obj_settings_button)
with (instance_create((camera_get_view_x(view_get_camera(0)) + 304), (camera_get_view_y(view_get_camera(0)) + 183), obj_settings_button))
    image_index = 4