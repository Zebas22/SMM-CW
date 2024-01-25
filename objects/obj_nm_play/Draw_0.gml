draw_self()
if (image_index == 1)
{
    if (time > 0)
    {
	    draw_set_font(global.font_hd)
        draw_set_color(c_white)
        draw_set_halign(fa_center)
        draw_text_transformed((x + 20), (y + 9), string_hash_to_newline(((string(time) + "s"))),image_xscale,image_yscale,0)
        draw_set_halign(fa_left)
    }
    else
        draw_sprite_ext(spr_load_image, 1, (x + 20), (y + 13), image_xscale, image_yscale, rot, c_white, 1)
}
else
{
    draw_set_font(global.font_hd)
    draw_set_color(c_text)
    draw_set_halign(fa_center)
    draw_text_transformed((x + 20), (y + 9), string_hash_to_newline((text)),image_xscale,image_yscale,0)
    draw_set_halign(fa_left)
}


