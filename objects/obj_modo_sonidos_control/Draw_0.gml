draw_sprite_ext(sprite_index, 1, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), (camera_get_view_width(view_get_camera(0)) / 16), (camera_get_view_height(view_get_camera(0)) / 16), 0, c_white, 1)
if (instance_exists(obj_erase) && obj_erase.active == 0)
    draw_sprite(spr, 0, ((camera_get_view_x(view_get_camera(0)) + 60) - obj_cursor.anim_left), ((camera_get_view_y(view_get_camera(0)) + 34) - obj_cursor.anim_top))

