var level;
draw_sprite_ext(sprite_index, image_index, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), 9, 9, 0, c_white, 1)
if (superado_texto == 1)
    draw_sprite_ext(spr_superado_text, anim_text, (camera_get_view_x(view_get_camera(0)) + 85), (camera_get_view_y(view_get_camera(0)) + 104), 1, 1, 0, c_white, 1)
draw_set_font(global.font_google)
draw_set_color(c_white)
if (loading != 0 || (text1 != "" && verify == 1))
{
    draw_sprite_ext(spr_expand_bg, 2, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), (camera_get_view_width(view_get_camera(0)) / 16), (camera_get_view_height(view_get_camera(0)) / 16), 0, c_white, 1)
    draw_sprite_stretched(spr_window_alert, 0, (camera_get_view_x(view_get_camera(0)) + 84), (camera_get_view_y(view_get_camera(0)) + 55), 216, 100)
    draw_set_halign(fa_center)
	draw_set_color(c_white)
    if (loading != 0)
    {
        draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 103), string_hash_to_newline(load[loading]))
        draw_sprite_ext(spr_load_image, 1, (camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 138), 1, 1, rot, c_white, 1)
    }
    else if (text1 != "")
    {
        draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 89), string_hash_to_newline(text1))
        draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 105), string_hash_to_newline(("ID: " + text2)))
    }
    draw_set_halign(fa_left)
}
if (dibujar_texto == 1)
{
	draw_sprite(spr_superado_gb,0,camera_get_view_x(view_get_camera(0)) + 115,camera_get_view_y(view_get_camera(0)) + 66)
	if (global.nm_play != 0){
	    draw_set_halign(fa_center)
        draw_text((camera_get_view_x(view_get_camera(0)) + 240), (camera_get_view_y(view_get_camera(0)) + 65), string_hash_to_newline(global.level_name))
	}else
    {
        level = scr_add3points(global.levelguardabot, 270, 52)
        draw_text((camera_get_view_x(view_get_camera(0)) + 240), (camera_get_view_y(view_get_camera(0)) + 65), string_hash_to_newline(level))
    }
	draw_set_halign(fa_left)
	draw_set_color(c_title)
    draw_text((camera_get_view_x(view_get_camera(0)) + 185), (camera_get_view_y(view_get_camera(0)) + 98), "Your time:      "+string_hash_to_newline(time))
    if (global.nrecord == 0){
		draw_text((camera_get_view_x(view_get_camera(0)) + 185), (camera_get_view_y(view_get_camera(0)) + 110), "World Record:   "+string_hash_to_newline(time))
		draw_sprite(spr_1stclear, 0, (camera_get_view_x(view_get_camera(0)) + 322), (camera_get_view_y(view_get_camera(0)) + 100))
	} else if (timer < global.nrecord)
	{
		draw_text((camera_get_view_x(view_get_camera(0)) + 185), (camera_get_view_y(view_get_camera(0)) + 110), "World Record:   "+string_hash_to_newline(time))
		draw_sprite(spr_nrecord, 0, (camera_get_view_x(view_get_camera(0)) + 322), (camera_get_view_y(view_get_camera(0)) + 98))
}
else
		draw_text((camera_get_view_x(view_get_camera(0)) + 185), (camera_get_view_y(view_get_camera(0)) + 110), "World Record:   "+string_hash_to_newline(time1))
}
if (mensaje != "" && verify == 1)
{
    draw_set_color(c_red)
    draw_set_halign(fa_center)
    draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 103), string_hash_to_newline(mensaje))
    draw_set_halign(fa_left)
}


