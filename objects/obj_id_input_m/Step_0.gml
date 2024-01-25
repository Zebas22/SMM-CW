if (obj_persistent.modo_android == 0)
{
    if (write == 1)
    {
        long = string_length(new_texto)
        if (long < 11 || keyboard_check(vk_backspace))
        {
            var buff = string_replace_all(keyboard_string, " ", "")
            h_text = string_upper(string_lettersdigits(buff))
            new_texto = scr_addsep(h_text)
        }
        else
            keyboard_string = new_texto
    }
    if mouse_check_button_pressed(mb_left)
    {
        if (mouse_x >= x && mouse_x <= (x + TX) && mouse_y >= y && mouse_y <= (y + TY))
        {
            write = 1
            keyboard_string = new_texto
        }
        else
            write = 0
    }
}


