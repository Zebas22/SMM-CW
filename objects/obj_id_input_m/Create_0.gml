write = 0
alarm[0] = 5
TX = 169
TY = 18
texto = ""
new_texto = ""
h_text = ""
anim = 0
long = 0
keyboard_string = ""
image_speed = 0
image_index = 1
var sx = obj_persistent.s
back = background_create_from_surface(application_surface, 0, 0, (global.gw * sx), (global.gh * sx), false, false)
instance_deactivate_all(true)
instance_activate_object(obj_persistent)
instance_activate_object(obj_makers)
instance_activate_object(obj_cursor)
instance_create_depth((x + 170), y, -5, obj_id_button_m)
instance_create_depth(347, 17, -5, obj_btn_close_search_m)



