draw_self()
draw_set_font(global.font_google)
draw_set_color(c_white)
if (global.cooldown = 1 and obj_nm_card_expand.author != global.my1)
	draw_text((x + 1.5), (y + 3), string_hash_to_newline(string(global.minutos) + "s"))
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(x, y, anim, 1)
}


