draw_self()
draw_set_font(global.font_google)
draw_set_color(c_white)
draw_set_halign(fa_center)
if (loading == 1)
    draw_sprite_ext(spr_load_image, 1, (x + (sprite_width / 2)), (y + 9), 1, 1, rot, c_white, 1)
else
	draw_text((x + (sprite_width / 2)), (y + 1), string_hash_to_newline((text)))
draw_set_halign(fa_left)
