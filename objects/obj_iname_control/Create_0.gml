image_speed = 0
image_index = 0
size_x = 10
size_y = 12
index = 0
if (global.idioma == 0)
    texto = "NOMBRE DE USUARIO"
else if (global.idioma == 1)
    texto = "USERNAME"
else if (global.idioma == 2)
    texto = "NOME DE USUÁRIO"
var sx = obj_persistent.s
back = background_create_from_surface(application_surface, 0, 0, (global.gw * sx), (global.gh * sx), false, false)
instance_deactivate_all(true)
instance_activate_object(obj_persistent)
instance_activate_object(obj_cursor)
instance_create((x + 14), (y + 94), obj_iname)
instance_create((x + 80), (y + 131), obj_bl2)
instance_create((x + 143), (y + 17), obj_iname_close)

