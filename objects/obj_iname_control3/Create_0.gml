image_speed = 0
image_index = 0
depth = -22
size_x = 10
size_y = 12
index = 0
switch global.idioma
{
    case 0:
        texto = "Usuario"
		texto2 = "Contraseña"
		texto3 = "Confirme su Contraseña"
        break
    case 1:
        texto = "Username"
		texto2 = "Password"
		texto3 = "Confirm Password"
        break
    default:
        texto = "Nome de usuário"
		texto2 = "Senha"
		texto3 = "Confirme sua senha"
        break
}
var sx = obj_persistent.s
back = background_create_from_surface(application_surface, 0, 0, (global.gw * sx), (global.gh * sx), false, false)
instance_deactivate_all(true)
instance_activate_object(obj_persistent)
instance_activate_object(obj_cursor)
instance_create((x + 16), (y + 54), obj_lun_reg)
instance_create((x + 16), (y + 88), obj_lp_reg)
instance_create((x + 16), (y + 122), obj_lp2_reg)
instance_create_depth((x + 80), (y + 151), -23, obj_bl_reg)
instance_create((x + 143), (y + 13), obj_iname_close)