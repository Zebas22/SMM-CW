draw_sprite_ext(sprite_index, image_index, x, y, image_xscale,image_yscale, 0, c_white, 1)
if (loading == 1)
    draw_sprite_ext(spr_load_image, 1, x + 9, y + 9, image_xscale, image_yscale, rot, c_white, 1)
else if (time > 0)
{
    draw_set_font(global.font_hd)
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text_transformed(x, y + 4, string_hash_to_newline(((string(time) + "s"))),image_xscale,image_yscale,0)
    draw_set_halign(fa_left)
}
else
{
    draw_sprite_ext(sprite_heart, index_heart, x, y, image_xscale,image_yscale, 0, c_white, 1)
}


