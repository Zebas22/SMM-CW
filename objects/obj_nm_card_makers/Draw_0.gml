var _cal, cal2;
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
draw_set_font(global.font_hd)
draw_set_color(c_color_name)
draw_text_transformed((x - 94), (y + 5), string_hash_to_newline(alias),0.3334,0.3334,0)
draw_text_transformed((x - 94), (y + 23), "ID: "+string_hash_to_newline(_id),0.3334,0.3334,0)
draw_set_color(c_color)
_cal = ((136 - string_width(string_hash_to_newline(uploads)) / 3) - 4)
cal2 = _cal - (string_width(string_hash_to_newline(star))/3)  - 17
draw_text_transformed((x + _cal), (y + 24), uploads,0.3334,0.3334,0)
draw_text_transformed((x + cal2), (y + 24), star,0.3334,0.3334,0)
draw_sprite_ext(spr_nm_icons, 12, (x + (_cal - 14)), (y + 22),0.3334,0.3334,0,c_white,1)
draw_sprite_ext(spr_nm_icons, 0, (x + (cal2 - 14)), (y + 22),0.3334,0.3334,0,c_white,1)
draw_set_color(c_white)
draw_set_font(global.font_hd2)
if(num<10)
draw_text_transformed((x - 121), (y + 13), num,0.3334,0.3334,0)
else
draw_text_transformed((x - 123), (y + 13), num,0.3334,0.3334,0)