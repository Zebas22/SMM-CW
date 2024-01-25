if (!instance_exists(obj_id_input))
{
    draw_sprite_stretched(spr_nm_shadow, 0, 0, 41, camera_get_view_width(view_get_camera(0)), 13)
	draw_sprite_ext(spr_mk_bg_en, 0, 0, 0,0.3334,0.3334,0,c_white,1)
	draw_sprite_ext(spr_mk_bg_en, 1, 192, 0,0.3334,0.3334,0,c_white,1)
    draw_set_font(global.font_hd)
    draw_set_color(c_white)

}
if (loading == 1)
{
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text_transformed((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 123), string_hash_to_newline("Please wait..."),0.3334,0.3334,0)
    draw_sprite_ext(spr_load_image, 1, (camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 108), 0.3334, 0.3334, rot, c_white, 1)
    draw_set_halign(fa_left)
}
if (mensaje != "")
{
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text_transformed((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 106), string_hash_to_newline((mensaje)),0.3334,0.3334,0)
    draw_set_halign(fa_left)
}


