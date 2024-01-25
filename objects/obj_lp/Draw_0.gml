draw_self()
draw_set_font(global.font_hd)
string_l = string_length(new_texto)
if (string_l > 17)
    string_l = 17
new_string = string_repeat("*", string_l)
draw_set_color(c_black)
draw_set_halign(fa_left)
draw_text_transformed((x + 5), (y + 7), string_hash_to_newline(new_string),0.3335,0.3335,0)