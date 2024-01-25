draw_self()
draw_set_font(global.font_hd)
draw_set_color(c_black)
if (string_width(string_hash_to_newline((new_texto))) > 310)
{
    var copy = string_copy(new_texto, 0, 23)
    var new_string = (copy + "...")
}
else
    new_string = new_texto
draw_text_transformed((x + 5), (y + 6), string_hash_to_newline(new_string),0.3335,0.3335,0)