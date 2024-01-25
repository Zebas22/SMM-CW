draw_self()
if (image_index == 1)
    draw_sprite_ext(spr_load_image, 1, (x + 25), (y + 10), 1, 1, rot, c_white, 1)
else
{
    draw_set_font(global.font_google)
    if (global.my1 == user_temp)
        draw_set_color(c_button)
    else
        draw_set_color(c_gray)
    draw_set_halign(fa_center)
    draw_text((x + (sprite_width / 2)), (y + posy), string_hash_to_newline((text)))
    draw_set_halign(fa_left)
}