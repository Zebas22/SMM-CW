draw_set_font(global.font_google)
draw_set_color(c_title)
draw_sprite_stretched(sprite_index, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), camera_get_view_width(view_get_camera(0)), camera_get_view_height(view_get_camera(0)))
draw_text_color((camera_get_view_x(view_get_camera(0)) + 164), (camera_get_view_y(view_get_camera(0)) + 77), string_hash_to_newline("Guardar Nivel"), c_title, c_title, c_title, c_title, 1)

