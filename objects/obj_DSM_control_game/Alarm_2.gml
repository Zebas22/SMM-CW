if ((!instance_exists(obj_nm_card)) && (!instance_exists(obj_nm_card_expand)) && loading == 1)
{
    mensaje = "Tiempo de conexion agotado"
    codigo = "002"
    loading = 0
    obj_DSM_control_game.active = 1
    //instance_create((camera_get_view_x(view_get_camera(0)) + 136), (camera_get_view_y(view_get_camera(0)) + 126), obj_nm_button_retry)
}