if ((!instance_exists(obj_nm_card_expand)) && instance_exists(obj_nivelesmundiales) && obj_nivelesmundiales.loading == 1)
{
    with (obj_nivelesmundiales)
    {
        mensaje = "Tiempo de conexion agotado"
        codigo = "002"
        loading = 0
        obj_nivelesmundiales.active = 1
        alarm[2] = -1
    }
    with (obj_id_input)
        write = 1
    image_index = 0
}


