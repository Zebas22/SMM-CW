draw_sprite_ext(sprite_index, effect_hover, x, y, image_xscale, image_yscale, 0, c_white, alpha)
draw_set_font(global.font_hd)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text_transformed(x, (y + posy + 4), text, 0.3334, 0.3334, 0);
draw_set_halign(fa_left)