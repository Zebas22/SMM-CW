draw_sprite(spr_cartels_bg, 1, (camera_get_view_x(view_get_camera(0)) + x_pos), (camera_get_view_y(view_get_camera(0)) + y_pos))
draw_sprite_ext(sprite_index, image_index, (camera_get_view_x(view_get_camera(0)) + x_pos + 2), (camera_get_view_y(view_get_camera(0)) + y_pos + 1), 1, 1, 0, c_white, image_alpha)