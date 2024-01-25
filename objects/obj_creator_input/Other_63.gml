var i_d, text_temp, buff;
i_d = ds_map_find_value(async_load, "id")
if (i_d == texto)
{
    if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != "")
        {
            text_temp = ds_map_find_value(async_load, "result")
            buff = string_replace_all(text_temp, "#", "")
            new_texto = buff
        }
    }
}

