var author = global.author
var level_id = global.level_id
var level_name = global.level_name
draw_clear(c_black)
draw_sprite_stretched(spr_mariostart, obj_lighting, (camera_get_view_x(view_get_camera(0)) + 20), (camera_get_view_y(view_get_camera(0)) + 16), 344, 36)
draw_set_font(global.font_google)
draw_set_color(c_black)
if (global.nm_play != 0)
{
    distancia = round(((384 - string_width(string_hash_to_newline((level_name)))) / 2));
    draw_text((camera_get_view_x(view_get_camera(0)) + distancia), (camera_get_view_y(view_get_camera(0)) + 26), string_hash_to_newline((level_name)));
	draw_sprite_ext(spr_user_icon, 0,(camera_get_view_x(view_get_camera(0)) + 160) , (camera_get_view_y(view_get_camera(0)) + 57), 1, 1, image_angle, c_white, 1);
	draw_set_color(c_white)
    draw_text((camera_get_view_x(view_get_camera(0)) + 175), (camera_get_view_y(view_get_camera(0)) + 54), string_hash_to_newline((author)));
	draw_text((camera_get_view_x(view_get_camera(0)) + 159), (camera_get_view_y(view_get_camera(0)) + 68), string_hash_to_newline((level_id)));
}
else if (global.levelguardabot != "")
{
    var ntext = string_copy(global.levelguardabot, 1, (string_length(global.levelguardabot) - 3))
    distancia = round(((384 - string_width(string_hash_to_newline((ntext)))) / 2))
    draw_text((camera_get_view_x(view_get_camera(0)) + distancia), (camera_get_view_y(view_get_camera(0)) + 26), string_hash_to_newline((ntext)))
	draw_sprite_ext(spr_user_icon, 0,(camera_get_view_x(view_get_camera(0)) + 160) , (camera_get_view_y(view_get_camera(0)) + 57), 1, 1, image_angle, c_white, 1);
	draw_set_color(c_white)
    draw_text((camera_get_view_x(view_get_camera(0)) + 175), (camera_get_view_y(view_get_camera(0)) + 54), string_hash_to_newline((global.user_gb)));
}
if (global.postnivel != 0)
{
    if (global.postnivel == 1)
	{
        var vertext = "Get over it from the start!"
	}
    else
	{
        vertext = "Get over it from the checkpoint!"
	}
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 162), string_hash_to_newline(vertext))
    draw_set_halign(fa_left)
}