image_speed = 0
c_letters = make_colour_rgb(89, 15, 16)
if (obj_persistent.modo_android == 0) && (global.keymod == 0)
{
    ventana = "Window"
    sombras = "Effects (Star, POW)"
}
else if (global.keymod == 0)
{
    ventana = "Touch Controls"
    sombras = "SM4J Controls"
}
if instance_exists(obj_editormanager)
    obj_editormanager.expand_open = 2
if instance_exists(obj_button_home)
{
    with (obj_button_home)
    {
        alarm[0] = -1
        press = 0
    }
}
if instance_exists(obj_pausa_button)
{
    with (obj_pausa_button)
    {
        alarm[0] = -1
        canpress = 1
    }
}
switch global.jugador
{
    case 1:
        active1 = 0
        active2 = 1
        active3 = 0
        active4 = 0
        break
    case 2:
        active1 = 0
        active2 = 0
        active3 = 1
        active4 = 0
        break
    case 3:
        active1 = 0
        active2 = 0
        active3 = 0
        active4 = 1
        break
    default:
        active1 = 1
        active2 = 0
        active3 = 0
        active4 = 0
        break
}

switch global.w_scale
{
    case 2:
        act1 = 0
        act2 = 1
        act3 = 0
        act4 = 0
        break
    case 3:
        act1 = 0
        act2 = 0
        act3 = 1
        act4 = 0
        break
    case 4:
        act1 = 0
        act2 = 0
        act3 = 0
        act4 = 1
        break
    default:
        act1 = 1
        act2 = 0
        act3 = 0
        act4 = 0
        break
}

instance_create((camera_get_view_x(view_get_camera(0)) + 139), (camera_get_view_y(view_get_camera(0)) + 137), obj_st_slider)
with (instance_create((camera_get_view_x(view_get_camera(0)) + 138), (camera_get_view_y(view_get_camera(0)) + 48), obj_selecting_player))
{
    value = 0
    image_draw = 0
    active = other.active1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 165), (camera_get_view_y(view_get_camera(0)) + 48), obj_selecting_player))
{
    value = 1
    image_draw = 1
    active = other.active2
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 191), (camera_get_view_y(view_get_camera(0)) + 48), obj_selecting_player))
{
    value = 2
    image_draw = 2
    active = other.active3
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 218), (camera_get_view_y(view_get_camera(0)) + 48), obj_selecting_player))
{
    value = 3
    image_draw = 3
    active = other.active4
}
if (obj_persistent.modo_android == 0)
{
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 138), (camera_get_view_y(view_get_camera(0)) + 89), obj_window_select))
    {
        value = 1
        image_draw = 0
        active = other.act2
    }
}
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 224), (camera_get_view_y(view_get_camera(0)) + 159), -19, obj_erasedata)
instance_create((camera_get_view_x(view_get_camera(0)) + 120), (camera_get_view_y(view_get_camera(0)) + 161), obj_button_creditos)
instance_create((camera_get_view_x(view_get_camera(0)) + 168), (camera_get_view_y(view_get_camera(0)) + 159), obj_button_settings_close)
