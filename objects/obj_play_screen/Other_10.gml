if (!instance_exists(obj_button_home))
{
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 112), (camera_get_view_y(view_get_camera(0)) + 116), obj_button_home))
    {
        image_index = 2
        depth = -25
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 112), (camera_get_view_y(view_get_camera(0)) + 149), obj_button_home))
    {
        image_index = 3
        depth = -25
    }
	with (instance_create((camera_get_view_x(view_get_camera(0)) + 16), (camera_get_view_y(view_get_camera(0)) + 177), obj_title_oprime))
	{
	sprite_index = spr_back_button_white
	image_xscale = 0.3334
	image_yscale = 0.3334
    image_speed = 0
    image_index = 0
}
}

