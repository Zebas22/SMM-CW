if ((global.bg_level == "mountain") && (global.modo_noche == 1))
	draw_sprite_ext(sprite_index, image_index, ((camera_get_view_x(view_get_camera(0)) + 29) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + 87), 1, 1, 0, c_white, 1)
else
	draw_sprite_ext(sprite_index, image_index, ((camera_get_view_x(view_get_camera(0)) + 29) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + 87), 1, 1, 0, c_white, 1)
if (effect_hover == 1)
{
    anim += 0.3
	if ((global.bg_level == "mountain") && (global.modo_noche == 1))
		scr_anim_hover(((camera_get_view_x(view_get_camera(0)) + 29) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + 87), anim, 1)
	else
		scr_anim_hover(((camera_get_view_x(view_get_camera(0)) + 29) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + 87), anim, 1)
}


