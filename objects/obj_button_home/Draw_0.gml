var posy;
 switch image_index
    {
        case 0:
			text = t_crear
            break
		case 1:
			text = t_desafio
            break
        case 2:
			text = t_nm
            break
        case 3:
			text = t_guarda
            break
    }
if (room == rm_title)
{
    switch image_index
    {
        case 0:
            posy = 108
            break
        case 2:
            posy = 115
            break
        case 3:
            posy = 148
            break
    }
	draw_sprite_ext(sprite_index, image_index, (camera_get_view_x(view_get_camera(0)) + 112), (camera_get_view_y(view_get_camera(0)) + posy),0.3334,0.3334,0,c_white,1)
	draw_set_font(global.font_hd2)
	draw_set_color(c_color)
	draw_set_halign(fa_center)
	draw_text_transformed((camera_get_view_x(view_get_camera(0)) + 198), (camera_get_view_y(view_get_camera(0)) + posy + 10), string_hash_to_newline(text),0.3334,0.333,0)
	draw_set_halign(fa_left)
}
else{
	draw_sprite_ext(sprite_index, image_index, x, y,0.3334,0.3334,0,c_white,1)
	draw_set_font(global.font_hd2)
	draw_set_color(c_color)
	draw_set_halign(fa_center)
	draw_text_transformed(x + 85, y + 10, text, 0.3334,0.333,0)
	draw_set_halign(fa_left)
}