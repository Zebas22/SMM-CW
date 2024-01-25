if (global.apariencia == 3)
    var scale = 1
else
    scale = 2
draw_sprite_ext(sprite_index, image_index, round(x), y, scale, scale, 0, c_white, 1)
if (draw_lives == 1)
{
    draw_set_font(global.numbers_lives)
    draw_sprite(spr_lives_x, 0, (camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 135))
    draw_text((camera_get_view_x(view_get_camera(0))) + 205, (camera_get_view_y(view_get_camera(0)) + 119), string_hash_to_newline((string_add_zeros(global.lives22, 2))))
}