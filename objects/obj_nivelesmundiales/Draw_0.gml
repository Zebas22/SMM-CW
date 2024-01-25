var pos;
if (!instance_exists(obj_id_input))
{
    draw_sprite_stretched(spr_nm_shadow, 0, 0, 41, camera_get_view_width(view_get_camera(0)), 13)
	draw_sprite_ext(spr_nm_bg, 0, 0, 0,0.3334,0.3334,0,c_white,1)
	draw_sprite_ext(spr_nm_bg, 1, 192, 0,0.3334,0.3334,0,c_white,1)
    draw_set_font(global.font_hd)
    draw_set_color(c_white)
    draw_sprite_ext(spr_nm_pages, 0, 0, 66,0.3334,0.3334,0,c_white,1)
    if (page > 9)
        var pos = 9
    else
        pos = 12
    draw_text_transformed(pos, 80, string_hash_to_newline(page),0.3334,0.3334,0)
	draw_text_transformed(5, 69, "Page",0.3334,0.3334,0)

}
if (loading == 1)
{
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text_transformed((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 121), string_hash_to_newline("Please wait..."),0.3334,0.3334,0)
    draw_sprite_ext(spr_load_image, 1, (camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 108), 0.3334, 0.3334, rot, c_white, 1)
    draw_set_halign(fa_left)
}
if (mensaje != "")
{
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text_transformed((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 104), string_hash_to_newline(mensaje),0.3334,0.3334,0)
    draw_set_halign(fa_left)
}


