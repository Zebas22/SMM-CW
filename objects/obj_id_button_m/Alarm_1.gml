if ((!instance_exists(obj_panel_makers)) && instance_exists(obj_makers) && obj_makers.loading == 1)
{
    with (obj_makers)
    {
        mensaje = "Tiempo de conexion agotado"
        codigo = "0"
        loading = 0
        obj_makers.active = 1
        alarm[2] = -1
    }
    with (obj_id_input_m)
        write = 1
    image_index = 0
}


