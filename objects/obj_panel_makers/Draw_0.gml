if sprite_exists(back)
{
    gpu_set_blendenable(0)
    var sx = 0.3334
    draw_sprite_ext(back, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), sx, sx, 0, c_white, 1)
    gpu_set_blendenable(1)
}
draw_sprite_ext(sprite_index, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), image_xscale, image_yscale, 0, c_white, 1)
draw_sprite_ext(sprite_index, 1, camera_get_view_x(view_get_camera(0)) + 192 , camera_get_view_y(view_get_camera(0)), image_xscale, image_yscale, 0, c_white, 1)
draw_set_font(global.font_hd)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text_transformed((x + 192), (y + 33), "Uploaded Courses",image_xscale,image_yscale,0)
if (load == 1)
{
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text_transformed((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 123), string_hash_to_newline("Please wait..."),image_xscale,image_yscale,0)
if (load == 1)
    draw_sprite_ext(spr_load_image, 1, (camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 108), image_xscale, image_yscale, r, c_white, 1)
}
if (men != "")
{
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text_transformed((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 106), string_hash_to_newline(men),image_xscale,image_yscale,0)
}
draw_set_halign(fa_left)
draw_set_color(c_name)
draw_text_transformed((x + 25), (y + 10), string_hash_to_newline(alias),image_xscale,image_yscale,0)

