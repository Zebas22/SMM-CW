var resultado, map, leveldata, card;
if (ds_map_find_value(async_load, "id") == url)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        if (map == -1)
        {
            with (obj_makers)
            {
                mensaje = "Error"
                codigo = "0"
                loading = 0
                obj_makers.active = 1
                alarm[2] = -1
            }
            with (obj_id_input_m)
                write = 1
            image_index = 0
            exit
        }
        if (!(ds_map_exists(map, "message")))
        {
				with (obj_id_input_m)
					instance_destroy()
				with (obj_nm_card_makers)
					instance_destroy()
				var i = 0
				leveldata = map
                card = instance_create(192, (56 + (39 * i)), obj_nm_card_makers)
                card.alias = decrypt_bl(ds_map_find_value(leveldata, "alias"))
				card.id_discord = decrypt_bl(ds_map_find_value(leveldata, "id"))
                card.uploads = ds_map_find_value(leveldata, "uploads")
                card.booster = ds_map_find_value(leveldata, "booster")
				card.star = ds_map_find_value(leveldata, "star")
				card.admin = ds_map_find_value(leveldata, "admin")
				card._id = decrypt_bl(ds_map_find_value(leveldata, "uid"))
				card.num = real(i+1)
            with (obj_makers)
            {
                loading = 0
                active = 1
                mensaje = ""
                codigo = ""
                alarm[2] = -1
            }
        }
        else if ds_map_exists(map, "message")
        {
			with (obj_makers)
			 {
				active = 1
				loading = 0
				mensaje = ds_map_find_value(map, "message")
			}
			with (obj_id_input_m)
				instance_destroy()
			with (obj_nm_card_makers)
					instance_destroy()
			
        }
        ds_map_destroy(map)
    }
    else
    {
        with (obj_makers)
        {
            mensaje = "Error"
            loading = 0
            obj_makers.active = 1
            alarm[2] = -1
        }
        
		with (obj_id_input_m)
				instance_destroy()
		with (obj_nm_card_makers)
				instance_destroy()
    }
}


