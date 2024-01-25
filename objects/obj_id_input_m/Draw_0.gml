var new_string;
if sprite_exists(back)
{
    gpu_set_blendenable(false)
    sx = 0.3334
    draw_sprite_ext(back, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), sx, sx, 0, c_white, 1)
    gpu_set_blendenable(true)
}
draw_sprite_ext(spr_search_bg, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), camera_get_view_width(view_get_camera(0)) / 16, camera_get_view_height(view_get_camera(0)) / 16, 0, c_white, 1)
draw_self()
draw_set_font(global.font_hd)
draw_set_color(c_white)
var new_string = new_texto
draw_text_transformed((x + 60), (y + 6), string_hash_to_newline((new_string)),0.3334,0.3334,0)
draw_set_halign(fa_center)
draw_text_transformed((192), (40), string_hash_to_newline(("ID Code")),0.3334,0.3334,0)
draw_set_halign(fa_left)