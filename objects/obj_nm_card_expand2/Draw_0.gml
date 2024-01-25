var porc, victor_text, levid, rec_text;
victor_text = "Clear rate"
levid = "Course ID"
rec_text = "No record"
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
draw_sprite_ext(spr_nm_card_image, real(entorno), (x - 94), (y + 12), image_xscale, image_yscale, 0, c_white, 1)
draw_sprite_ext(spr_carteles_small, real(apariencia), (x + 99), y + 12, image_xscale, image_yscale, 0, c_white, 1)
switch global.apariencia
	{
	    case 0:
		draw_sprite(spr_nm_0_apariencia_expand, real(entorno), (x - 94), (y + 52))
	    break
		case 1:
		draw_sprite(spr_nm_1_apariencia_expand, real(entorno), (x - 94), (y + 52))
	    break
		case 2:
		draw_sprite(spr_nm_2_apariencia_expand, real(entorno), (x - 94), (y + 52))
	    break
	}
draw_set_font(global.font_hd)
draw_set_color(c_color_name)
draw_set_halign(fa_left)
draw_text_transformed((x - 90), (y + 3), string_hash_to_newline(name),image_xscale,image_yscale,0)
draw_sprite_ext(spr_nm_icons, 0, (x - 87), (y + 38),0.3334,0.3334,0,c_white,1)
draw_set_color(c_color)
draw_text_transformed((x - 74), (y + 40), string_hash_to_newline(likes),image_xscale,image_yscale,0)
draw_sprite_ext(spr_nm_icons, 1, (x - (31 - (string_width(string_hash_to_newline(likes)) + 8))- 43), (y + 39),0.3334,0.3334,0,c_white,1)
draw_text_transformed((x - (30 - (string_width(string_hash_to_newline(likes)) + 21))- 43), (y + 40), string_hash_to_newline(intentos),image_xscale,image_yscale,0)
draw_set_color(c_white)
draw_text_transformed((x - 24), (y + 122), string_hash_to_newline((date)),image_xscale,image_yscale,0)
draw_set_color(c_color_name)
draw_text_transformed((x - 88), (y + 133), string_hash_to_newline(("Record")),image_xscale,image_yscale,0)
draw_text_transformed((x - 135), (y + 104), string_hash_to_newline((victor_text)),image_xscale,image_yscale,0)
draw_text_transformed((x + 67), (y + 112), string_hash_to_newline((levid)),image_xscale,image_yscale,0)
draw_set_color(c_color)
if (record_name == "" || record_name == "0" )
    draw_text_transformed(((x - 66) - round((string_width(string_hash_to_newline((rec_text))) / 2))), (y + 142), string_hash_to_newline((rec_text)),image_xscale,image_yscale,0)
else
{
    draw_text_transformed((x - 88), (y + 142), string_hash_to_newline((record)),image_xscale,image_yscale,0)
    draw_text_transformed((x - 42), (y + 142), string_hash_to_newline((record_name)),image_xscale,image_yscale,0)
}
draw_set_color(c_color_name)
if (des == 0)
{
    draw_sprite_ext(spr_nm_icons, 2, (x - 127), (y + 123),0.3334,0.3334,0,c_white,1)
    draw_text_transformed((x - 113), (y + 123), string_hash_to_newline((muertes)),image_xscale,image_yscale,0)
    draw_sprite_stretched(spr_expand_bg, 6, (x - 141), (y + 133), 46, 1)
    draw_sprite_ext(spr_nm_icons, 5, (x - 127), (y + 137),0.3334,0.3334,0,c_white,1)
    draw_text_transformed((x - 113), (y + 137), string_hash_to_newline((victorias)),image_xscale,image_yscale,0)
}
else
{
    porc = (string(porcentaje) + "%")
    draw_text_transformed((x - 130), (y + 133), string_hash_to_newline((porc)),image_xscale,image_yscale,0)
}
draw_text_transformed((x + 53), (y + 128), string_hash_to_newline((_id)),image_xscale,image_yscale,0)