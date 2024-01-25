var i_d = ds_map_find_value(async_load, "id")
if (i_d == texto)
{
    if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != "")
        {
            var clip = ds_map_find_value(async_load, "result")
            if (string_length(clip) == 19)
            {
                var buff = string_replace_all(clip, " ", "")
                h_text = string_upper(string_lettersdigits(buff))
                new_texto = scr_addseparators(h_text)
                long = string_length(new_texto)
            }
        }
    }
}


