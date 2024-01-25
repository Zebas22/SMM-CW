draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, type, c_white, 1)
if (type == 0 && instance_exists(obj_nivelesmundiales))
{
    draw_sprite(spr_sid_inputs2, 0, (x + 9), (y - 9))
    draw_set_font(global.font_google)
    draw_set_color(c_white)
    draw_text((x - 8), (y - 22), string_hash_to_newline((dfcty)))
    draw_set_color(c_black)
    draw_set_halign(fa_center)
    if (obj_nivelesmundiales.dificultad == -1)
        var texto = anyone
    else
        texto = text[obj_nivelesmundiales.dificultad]
    draw_text(((x + 8) + 56), (y - 8), string_hash_to_newline((texto)))
    draw_set_halign(fa_left)
}


