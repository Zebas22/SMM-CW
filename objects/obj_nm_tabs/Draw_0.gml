draw_self()
if (icon == 1)
    draw_sprite(spr_nm_ministar, image_index, (x + 15), (y + 5))
else
{
    draw_set_font(global.font_hd)
    draw_set_color(c_color)
    draw_set_halign(fa_center)
    draw_text_transformed(round((x + (sprite_width / 2))), (y + 4), string_hash_to_newline((text)),0.3334,0.3334,0)
    draw_set_halign(fa_left)
}


