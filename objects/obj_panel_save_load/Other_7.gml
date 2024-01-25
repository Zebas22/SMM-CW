if (sprite_index == spr_panel_save_load)
{
    image_speed = 0
    image_index = 12
    instance_create((camera_get_view_x(view_get_camera(0)) + 229), (camera_get_view_y(view_get_camera(0)) + 68), obj_button_save_load)
    instance_create((camera_get_view_x(view_get_camera(0)) + 229), (camera_get_view_y(view_get_camera(0)) + 107), obj_button_save_changes)
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 229), (camera_get_view_y(view_get_camera(0)) + 146), obj_button_save_load))
        sprite_index = spr_button_load
}

