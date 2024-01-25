if (sprite_index == spr_cronometro)
{
    image_speed = 0
    image_index = 11
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 86), (camera_get_view_y(view_get_camera(0)) + 70), obj_button_time))
        sprite_index = spr_button_time_up
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 86), (camera_get_view_y(view_get_camera(0)) + 144), obj_button_time))
        sprite_index = spr_button_time_down
    instance_create((camera_get_view_x(view_get_camera(0)) + 167), (camera_get_view_y(view_get_camera(0)) + 177), obj_button_ok)
    can_time = 1
}

