draw_sprite_ext(sprite_index, 1, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), (camera_get_view_width(view_get_camera(0)) / 16), (camera_get_view_height(view_get_camera(0)) / 16), 0, c_white, 1)
if (global.bg_level == "forest" || global.bg_level == "beach")
    draw_sprite(spr, 1, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
else
    draw_sprite(spr, 2, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))

