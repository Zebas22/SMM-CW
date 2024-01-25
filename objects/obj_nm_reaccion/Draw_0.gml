var reaccione;
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, type, c_white, 1)
if global.idioma = 0
	reaccione = "REACCION"
else if global.idioma = 1
	reaccione = "REACTION"
else if global.idioma = 2
	reaccione = "REAZIONE"
if (type == 0 && instance_exists(obj_nivelesmundiales))
{
    draw_sprite(spr_sid_inputs2, 0, (x + 9), (y - 9))
    draw_set_font(global.font_google)
    draw_set_color(c_white)
    draw_text((x - 8), (y - 22), string_hash_to_newline((reaccione)))
    draw_set_color(c_black)
    draw_set_halign(fa_center)
    if (obj_nivelesmundiales.reaccion == -1){
		if global.idioma = 0
        var texto = "Cualquiera"
		else if global.idioma = 1
		texto = "All"
		else if global.idioma = 2
		texto = "Qualsiasi"
		else if global.idioma = 3
		texto = "Qualquer"
	}
    else
        texto = text[obj_nivelesmundiales.reaccion]
    draw_text(((x + 8) + 56), (y - 8), string_hash_to_newline((texto)))
    draw_set_halign(fa_left)
}


