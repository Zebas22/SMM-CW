var map, i, leveldata, card, record, timer, seconds, minutes, milliseconds, user_data;
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
    with (obj_nm_card)
        instance_destroy()
    for (var i = 0; i < ds_list_size(levels); i++)
    {
        leveldata = ds_list_find_value(levels, i)
        card = instance_create(192, (56 + (54 * i)), obj_nm_card)
        card.name = ds_map_find_value(leveldata, "name")
        card.likes = ds_map_find_value(leveldata, "likes")
        card.downloads = ds_map_find_value(leveldata, "downloads")
        card.dislikes = ds_map_find_value(leveldata, "dislikes")
        card.intentos = ds_map_find_value(leveldata, "intentos")
        card.victorias = real(ds_map_find_value(leveldata, "victorias"))
        card.muertes = real(ds_map_find_value(leveldata, "muertes"))
        card.apariencia = ds_map_find_value(leveldata, "apariencia")
		card.entorno = ds_map_find_value(leveldata, "entorno")
        card.date = ds_map_find_value(leveldata, "date")
        card.author = decrypt_bl(ds_map_find_value(leveldata, "author"))
        card.archivo = decrypt_bl(ds_map_find_value(leveldata, "archivo"))
		card._id = decrypt_bl(ds_map_find_value(leveldata, "id"))
        card.featured = ds_map_find_value(leveldata, "featured")
        card.date = ds_map_find_value(leveldata, "date")
        var record = ds_map_find_value(leveldata, "record")
        if (ds_map_find_value(record, "record") == "yes")
        {
            card.record_name = decrypt_bl(ds_map_find_value(record, "alias"))
		    card.nrecord = real(ds_map_find_value(record, "time"))
            timer = real(ds_map_find_value(record, "time"))
            seconds = floor((timer / 1000))
            minutes = floor((seconds / 60))
            milliseconds = (timer - (seconds * 1000))
            seconds = (seconds % 60)
            card.record = ((((string_add_zeros(minutes, 2) + ":") + string_add_zeros(seconds, 2)) + ":") + string_add_zeros(milliseconds, 3))
        }
        if (card.victorias == 0 && card.muertes == 0)
            card.porcentaje = 0
        else if (card.victorias == 0 && card.muertes != 0)
            card.porcentaje = 0
        else if (card.muertes == 0 && card.victorias != 0)
            card.porcentaje = 100
        else
        {
            card.porcentaje = ((card.victorias / card.muertes) * 100)
            if (card.porcentaje > 100)
                card.porcentaje = 99
        }
        var user_data = ds_map_find_value(leveldata, "user_data")
        if (global.id_CR == ds_map_find_value(leveldata, "id"))
        {
            card.completed = global.complete_CR
            card.liked = global.liked_CR
        }
        else
        {
            card.completed = ds_map_find_value(user_data, "completed")
            card.liked = real(ds_map_find_value(user_data, "liked"))
        }
        card.etiquetas = ds_map_find_value(leveldata, "etiquetas")
    }
    loading = 0
    obj_nivelesmundiales.active = 1
    with (obj_nm_button_retry)
        instance_destroy()
    mensaje = ""
    codigo = ""
    alarm[2] = -1
}
ds_map_destroy(map)


