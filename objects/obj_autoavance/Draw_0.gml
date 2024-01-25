draw_sprite_ext(sprite_index, image_index, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), 1, 1, 0, c_white, 1)
draw_set_font(global.font_google);
draw_set_color(c_white)
if text = 1
draw_text_lang(x + 115-vx, y + 37, "Autoavance", "Autoscroll", fa_left, fa_left, "Scorrimento automatico")

