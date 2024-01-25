if (sprite_index == spr_anim_expand)
{
	image_speed = 0
    image_index = 15
	instance_create((camera_get_view_x(view_get_camera(0)) + 346), (camera_get_view_y(view_get_camera(0)) + 11), obj_button_close)
	with (instance_create((camera_get_view_x(view_get_camera(0)) + 15), (camera_get_view_y(view_get_camera(0)) + 98), obj_next_before))
    image_index = 0
	with (instance_create((camera_get_view_x(view_get_camera(0)) + 339), (camera_get_view_y(view_get_camera(0)) + 98), obj_next_before))
    image_index = 1
	event_user(0)
}