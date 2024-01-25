if ((!instance_exists(obj_nm_card)) && (!instance_exists(obj_nm_card_expand)) && loading == 1)
{
    mensaje = "Tiempo de conexion agotado"
    codigo = "002"
    loading = 0
    obj_nivelesmundiales.active = 1
    with (obj_nm_button_retry)
        instance_destroy()
    instance_create((camera_get_view_x(view_get_camera(0)) + 168), (camera_get_view_y(view_get_camera(0)) + 126), obj_nm_button_retry)
}


