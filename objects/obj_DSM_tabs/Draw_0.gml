draw_self()
draw_set_font(global.font_hd)
draw_set_color(c_button)
draw_set_halign(fa_center)
if (loading == 1)
    draw_sprite_ext(spr_load_image, 1, (x + 44), (y + 8), image_xscale, image_yscale, rot, c_white, 1)
else
	draw_text_transformed((x + 44), y + 4, string_hash_to_newline(text),image_xscale,image_yscale,0)
draw_set_halign(fa_left)