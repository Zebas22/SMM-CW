draw_self()
if (image_index == 1 && time == 0)
    draw_sprite_ext(spr_load_image, 1, x, (y + 8), 0.3334, 0.3334, rot, c_white, 1)
if (mensaje != "")
{
    draw_set_font(global.font_hd)
    draw_set_color(c_red)
    draw_set_halign(fa_center)
    draw_text_transformed((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 189), string_hash_to_newline(mensaje),0.3334,0.3334,0)
    draw_set_halign(fa_left)
}
if (time > 0)
{
    draw_set_font(global.font_hd)
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text_transformed(x, (y + 5), string_hash_to_newline((string(time) + "s")),0.3334,0.3334,0)
    draw_set_halign(fa_left)
}