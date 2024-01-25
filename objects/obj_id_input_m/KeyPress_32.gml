if (write == 1 && anim == 0 && clipboard_has_text())
{
    var clip = clipboard_get_text()
    if (string_length(clip) == 11)
    {
        var buff = string_replace_all(clip, " ", "")
        h_text = string_upper(string_lettersdigits(buff))
        new_texto = scr_addsep(h_text)
    }
}


