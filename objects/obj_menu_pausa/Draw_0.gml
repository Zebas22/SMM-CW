var title,author,likes,intentos,record;
if sprite_exists(back)
{
    gpu_set_blendenable(0)
    var sx = 0.5
    draw_sprite_ext(back, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), sx, sx, 0, c_white, 1)
    gpu_set_blendenable(1)
}
draw_sprite(sprite_index,0,camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
draw_sprite(spr_pausa_text, 0, (camera_get_view_x(view_get_camera(0)) + 260), (camera_get_view_y(view_get_camera(0)) + 9))
draw_set_font(global.font_google)
draw_set_color(c_white)
if (global.nm_play != 0)
{
	title = "Course World"
    var texto = global.level_name
    if (string_width(string_hash_to_newline(texto)) > 205)
    {
        var copy = string_copy(texto, 0, 40)
        var level = (copy + "...")
    }
    else
        level = texto
	author = global.author
	likes = global.number_like
	intentos = global.intentos
	record = global.record
}
else
{
	title = "Coursebot"
    texto = global.levelguardabot
    level = scr_add3points(texto, 205, 40)  
	author = global.user_gb
	likes = "---"
	intentos = "---"
	record = "--"
}
draw_text((camera_get_view_x(view_get_camera(0)) + 16), (camera_get_view_y(view_get_camera(0)) + 9), string_hash_to_newline(title))
draw_text((camera_get_view_x(view_get_camera(0)) + 40), (camera_get_view_y(view_get_camera(0)) + 25), string_hash_to_newline(level))
draw_text((camera_get_view_x(view_get_camera(0)) + 35), (camera_get_view_y(view_get_camera(0)) + 39), string_hash_to_newline(author))
draw_text((camera_get_view_x(view_get_camera(0)) + 138), (camera_get_view_y(view_get_camera(0)) + 39), string_hash_to_newline(likes))
draw_text((camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 39), string_hash_to_newline(intentos))