image_speed = 0
image_index = 0
size_x = 10
size_y = 12
index = 0
switch (global.idioma) {
    case 0:
        texto = "Usuario";
        texto2 = "Contraseña";
        break;
    case 1:
        texto = "Username";
        texto2 = "Password";
        break;
    case 2:
        texto = "Nome de usuário";
        texto2 = "Senha";
        break;
    default:
        texto = "Usuario";
        texto2 = "Contraseña";
        break;
}
var sx = obj_persistent.s
back = background_create_from_surface(application_surface, 0, 0, (global.gw * sx), (global.gh * sx), false, false)
instance_deactivate_all(true)
instance_activate_object(obj_persistent)
instance_activate_object(obj_cursor)
instance_create((x + 16), (y + 52), obj_lun)
instance_create((x + 16), (y + 94), obj_lp)
instance_create((x + 80), (y + 133), obj_bl)
instance_create((x + 140), (y + 16), obj_iname_close)

