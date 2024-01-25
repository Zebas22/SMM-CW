var resultado, map, i, leveldata, card;
var map = json_decode(global.map_consult)
if (map == -1)
{
    show_debug_message("Resultado invalido")
    exit
}
if (!(ds_map_exists(map, "message")))
{
			num_rows = real(ds_map_find_value(map, "num_rows"))
            rows_perpage = real(ds_map_find_value(map, "rows_perpage"))
            pages = real(ds_map_find_value(map, "pages"))
            levels = ds_map_find_value(map, "result")
            global.type_consult = type_consulta
            with (obj_nm_card_makers)
                instance_destroy()
            for (var i = 0; i < ds_list_size(levels); i++)
            {
                leveldata = ds_list_find_value(levels, i)
                card = instance_create_depth(192, (56 + (39 * i)), 0, obj_nm_card_makers)
                card.alias = decrypt_bl(ds_map_find_value(leveldata, "alias"))
				card.id_discord = decrypt_bl(ds_map_find_value(leveldata, "id"))
                card.uploads = ds_map_find_value(leveldata, "uploads")
                card.booster = ds_map_find_value(leveldata, "booster")
				card.star = ds_map_find_value(leveldata, "star")
				card.admin = ds_map_find_value(leveldata, "admin")
				card.num = real(i+1)
            }
            loading = 0
            obj_makers.active = 1
            with (obj_nm_button_retry_maker)
                instance_destroy()
            mensaje = ""
            codigo = ""
            alarm[2] = -1
}
ds_map_destroy(map)


