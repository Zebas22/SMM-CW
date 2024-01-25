var map = json_decode(global.map_consult)
if (map == -1)
    show_debug_message("Resultado invalido")
if (!(ds_map_exists(map, "message")))
{
			num_rows = real(ds_map_find_value(map, "num_rows"))
            rows_perpage = real(ds_map_find_value(map, "rows_perpage"))
            pages = real(ds_map_find_value(map, "pages"))
            levels = ds_map_find_value(map, "result")
            global.map_consult = resultado
            global.type_consult = type_consulta
            with (obj_nm_card)
                instance_destroy()
            var leveldata = ds_list_find_value(levels, 0)
            var card = obj_DSM_level
            card.name = ds_map_find_value(leveldata, "name")
            card.archivo = decrypt_bl(ds_map_find_value(leveldata, "archivo"))
            card._id = decrypt_bl(ds_map_find_value(leveldata, "id"))
            card.author = decrypt_bl(ds_map_find_value(leveldata, "author"))
            loading = 0
            obj_DSM_control_game.active = 1
            mensaje = ""
            codigo = ""
            alarm[2] = -1
}
ds_map_destroy(map)