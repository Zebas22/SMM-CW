draw_self()
if (loading == 1)
    draw_sprite_ext(spr_load_image, 1, (camera_get_view_x(view_get_camera(0)) + 365), (camera_get_view_y(view_get_camera(0)) + 202), 1, 1, rot, c_white, 1)
if (mensaje != "")
{
	loading = 0
    draw_set_color(c_red)
    draw_set_halign(fa_center)
    draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 195), string_hash_to_newline(mensaje))
    draw_set_halign(fa_left)
}