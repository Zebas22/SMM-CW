s_pink_coins = scr_pink_coins()
s_player_lives = scr_player_lives()
switch global.apariencia
{
    case 0:
        draw_set_font(global.wdigits_SMB)
        break
    case 1:
        draw_set_font(global.wdigits_SMB3)
        break
    case 2:
        draw_set_font(global.wdigits)
        break
    case 4:
        draw_set_font(global.wdigits_SMB2)
        break
}

draw_set_colour(c_white)
draw_set_alpha(1)
if (global.lives22 == 0 || room == rm_editor)
{
    draw_sprite_ext(spr_coinhud, global.apariencia, (camera_get_view_x(view_get_camera(0)) + 15), (camera_get_view_y(view_get_camera(0)) + 11), 1, 1, 0, c_white, 1)
    draw_text((camera_get_view_x(view_get_camera(0)) + 32), (camera_get_view_y(view_get_camera(0)) + 11), string_hash_to_newline(string_add_zeros(global.coins, 2)))
    if (global.apariencia == 1)
        draw_sprite(spr_pmeter, pmeter, (camera_get_view_x(view_get_camera(0)) + 15), (camera_get_view_y(view_get_camera(0)) + 26))
}
else
{
    draw_sprite_ext(s_player_lives, global.jugador, (camera_get_view_x(view_get_camera(0)) + 11), (camera_get_view_y(view_get_camera(0)) + 6), 1, 1, 0, c_white, 1)
    draw_text((camera_get_view_x(view_get_camera(0)) + 36), (camera_get_view_y(view_get_camera(0)) + 11), string_hash_to_newline(string_add_zeros(global.lives22, 3)))
    draw_sprite_ext(spr_cont_lives, global.liveleves, (camera_get_view_x(view_get_camera(0)) + 68), (camera_get_view_y(view_get_camera(0)) + 8), 1, 1, 0, c_white, 1)
    draw_sprite_ext(spr_coinhud, global.apariencia, (camera_get_view_x(view_get_camera(0)) + 15), (camera_get_view_y(view_get_camera(0)) + 25), 1, 1, 0, c_white, 1)
    draw_text((camera_get_view_x(view_get_camera(0)) + 36), (camera_get_view_y(view_get_camera(0)) + 25), string_hash_to_newline(string_add_zeros(global.coins, 2)))
    if (global.apariencia == 1)
        draw_sprite(spr_pmeter, pmeter, (camera_get_view_x(view_get_camera(0)) + 15), (camera_get_view_y(view_get_camera(0)) + 40))
}
if (global.condiciones == 1 && editor == 0)
    draw_sprite(spr_cond_hud, global.condiciones_count, (camera_get_view_x(view_get_camera(0)) + 58), (camera_get_view_y(view_get_camera(0)) + 6))
draw_text((camera_get_view_x(view_get_camera(0)) + 257), (camera_get_view_y(view_get_camera(0)) + 11), string_hash_to_newline(string_add_zeros(score, 9)))
draw_sprite_ext(spr_timehud, global.apariencia, (camera_get_view_x(view_get_camera(0)) + 337), (camera_get_view_y(view_get_camera(0)) + 11), 1, 1, 0, c_white, 1)
draw_text((camera_get_view_x(view_get_camera(0)) + 346), (camera_get_view_y(view_get_camera(0)) + 11), string_hash_to_newline(string_add_zeros(global.timer, 3)))
if (global.pink_coins_total != 0 && pink_coins_draw == 1)
    draw_sprite_ext(s_pink_coins, global.pink_coins, (camera_get_view_x(view_get_camera(0)) + 250), (camera_get_view_y(view_get_camera(0)) + 24), 1, 1, 0, c_white, 1)
draw_set_alpha(1)

