draw_self()
draw_set_font(global.font_google)
draw_set_color(c_button)
draw_set_halign(fa_center)
if (loading == 1)
    draw_sprite_ext(spr_load_image, 1, (x + 45), (y + 8), 1, 1, rot, c_white, 1)
else
	draw_text((x + 45), y, string_hash_to_newline(text))
draw_set_halign(fa_left)