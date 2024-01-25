if (sprite_index == spr_panel_apariencia_anim)
{
    image_speed = 0
    image_index = 11
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 70), (camera_get_view_y(view_get_camera(0)) + 92), obj_card_logo))
    {
        apariencia = 0
        image_index = 0
        x_pos = 70
        y_pos = 92
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 131), (camera_get_view_y(view_get_camera(0)) + 92), obj_card_logo))
    {
        apariencia = 1
        image_index = 1
        x_pos = 131
        y_pos = 92
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 71), (camera_get_view_y(view_get_camera(0)) + 127), obj_card_logo))
    {
        apariencia = 2
        image_index = 2
        x_pos = 71
        y_pos = 127
    }
}