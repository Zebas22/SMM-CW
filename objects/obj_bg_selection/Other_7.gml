if (sprite_index == spr_panel_entorno_anim)
{
    image_speed = 0
    image_index = 11
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 88), (camera_get_view_y(view_get_camera(0)) + 82), obj_bg1))
    {
        bg_s = "ground"
        image_index = 0
        subimage = image_index
        x_pos = 88
        y_pos = 82
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 133), (camera_get_view_y(view_get_camera(0)) + 82), obj_bg1))
    {
        bg_s = "underground"
        image_index = 1
        subimage = image_index
        x_pos = 133
        y_pos = 82
    }
	with (instance_create((camera_get_view_x(view_get_camera(0)) + 179), (camera_get_view_y(view_get_camera(0)) + 82), obj_bg1))
    {
        bg_s = "castle"
        image_index = 2
        subimage = image_index
        x_pos = 179
        y_pos = 82
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 225), (camera_get_view_y(view_get_camera(0)) + 82), obj_bg1))
    {
        bg_s = "underwater"
        image_index = 3
        subimage = image_index
        x_pos = 225
        y_pos = 82
    }
	with (instance_create((camera_get_view_x(view_get_camera(0)) + 267), (camera_get_view_y(view_get_camera(0)) + 82), obj_bg1))
    {
        bg_s = "ghost"
        image_index = 4
        subimage = image_index
        x_pos = 267
        y_pos = 82
    }
	with (instance_create((camera_get_view_x(view_get_camera(0)) + 88), (camera_get_view_y(view_get_camera(0)) + 110), obj_bg1))
    {
        bg_s = "airship"
        image_index = 5
        subimage = image_index
        x_pos = 88
        y_pos = 110
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 133), (camera_get_view_y(view_get_camera(0)) + 110), obj_bg1))
    {
        bg_s = "desert"
        image_index = 6
        subimage = image_index
        x_pos = 133
        y_pos = 110
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 179), (camera_get_view_y(view_get_camera(0)) + 110), obj_bg1))
    {
        bg_s = "snow"
        image_index = 7
        subimage = image_index
        x_pos = 179
        y_pos = 110
    }
}

