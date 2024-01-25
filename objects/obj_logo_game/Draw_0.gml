if (active == 0)
    draw_sprite(spr_cartels_bg, 0, (camera_get_view_x(view_get_camera(0)) + 2), (camera_get_view_y(view_get_camera(0)) + 4)- obj_cursor.anim_top)
draw_sprite_ext(sprite_index, image_index, (camera_get_view_x(view_get_camera(0)) + 3), (camera_get_view_y(view_get_camera(0)) + 5)- obj_cursor.anim_top, 1, 1, 0, c_white, 1)