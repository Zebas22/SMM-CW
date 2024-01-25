image_xscale = 0.3334
image_yscale = 0.3334
image_speed = 0
depth = -10
var sx = obj_persistent.s
back = background_create_from_surface(application_surface, 0, 0, (global.gw * sx), (global.gh * sx), false, false)
instance_deactivate_all(true)
instance_activate_object(obj_persistent)
instance_activate_object(obj_cursor)
instance_activate_object(obj_makers)
c_name = make_color_rgb(130,122,199)
alias = ""
id_discord = ""
load = 1
r = 0
men = ""
cod = ""
rows_perpage = 0
type_consulta = 0
url = ""
pos = 54
list_post = 1
instance_create_depth(x , y, -12, obj_nm_panel_makers_top)
instance_create_depth(x + 346, y + 4, -13, obj_nm_panel_makers_close)
instance_create_depth(349, 57, -11, obj_scrollbar4)
alarm[0] = 5