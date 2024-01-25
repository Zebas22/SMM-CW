if (active == 0)
    draw_sprite(spr_card_background, 0, ((camera_get_view_x(view_get_camera(0)) + 2) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + 35))
draw_sprite_ext(sprite_index, image_index, ((camera_get_view_x(view_get_camera(0)) + 4) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + 37), 1, 1, 0, c_white, 1)