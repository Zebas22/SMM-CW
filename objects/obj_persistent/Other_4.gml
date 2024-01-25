view_set_visible(0, true)
view_enabled = true
view_set_wport(0, (global.gw * 2))
view_set_hport(0, (global.gh * 2))
camera_set_view_size(view_get_camera(0),  global.gh, camera_get_view_height(view_get_camera(0)))
camera_set_view_size(view_get_camera(0),  global.gw, camera_get_view_width(view_get_camera(0)))
camera_set_view_border(view_get_camera(0), (global.gh / 2), camera_get_view_border_y(view_get_camera(0)))
camera_set_view_border(view_get_camera(0), (global.gw / 2), camera_get_view_border_x(view_get_camera(0)))
if (room != rm_guardabot && room != rm_guardabot_play && room != rm_title)
{
    global.etiqueta1_temp = -1
    global.etiqueta2_temp = -1
}
if (room != rm_guardabot_play && room != rm_title)
{
    global.condiciones = 0
    global.condiciones_clear = 0
    global.condiciones_type = 0
    global.condiciones_object = 0
    global.condiciones_count = 0
}
if (room != rm_niveles_mundiales && room != rm_guardabot_play)
{
    global.map_consult = -4
    global.type_consult = -4
    global.pages_nm = 1
    global.tabvalue = 2
}
if (room == rm_logo)
    alarm[4] = 240
if (room != rm_guardabot_play)
{
    global.level_g = 0
    global.nm_play = 0
    global.level_id = ""
}
if (mode == 1)
    event_user(0)
